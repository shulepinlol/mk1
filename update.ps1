$exeName = "overlay.exe"
$configName = "config.ini"
$versionFile = "version.txt"
$githubOwner = "shulepinlol"
$githubRepo = "mk1"
$releaseApiUrl = "https://api.github.com/repos/$githubOwner/$githubRepo/releases/latest"
$downloadFolder = ".\temp"

function Check-RequiredFiles {
    $requiredFiles = @($exeName, $versionFile)

    foreach ($file in $requiredFiles) {
        if (-Not (Test-Path -Path ".\$file")) {
            return $false
        }
    }
    return $true
}

function Get-CurrentVersion {
    if (-Not (Test-Path $versionFile)) {
        Write-Error "File $versionFile not found."
        exit 1
    }

    $version = Get-Content $versionFile | Where-Object { $_.Trim() -ne "" } | Select-Object -First 1
    if (-Not $version) {
        Write-Error "Version not found in $versionFile."
        exit 1
    }

    return $version.Trim()
}

function Get-LatestVersion {
    try {
        $response = Invoke-RestMethod -Uri $releaseApiUrl -UseBasicParsing
        return $response.tag_name
    }
    catch {
        Write-Error "Failed to get the latest version from GitHub: $_"
        exit 1
    }
}

function Compare-Versions($current, $latest) {
    try {
        [Version]$currentVersion = $current -replace '^v', ''
        [Version]$latestVersion = $latest -replace '^v', ''
        return ($latestVersion -gt $currentVersion)
    }
    catch {
        Write-Error "Error comparing versions: $_"
        exit 1
    }
}

function Download-Repository($latestVersion) {
    try {
        $zipUrl = "https://github.com/$githubOwner/$githubRepo/archive/refs/tags/$latestVersion.zip"
        $zipPath = "$downloadFolder\mk1-$latestVersion.zip"

        Write-Host "Downloading repository from $zipUrl..."
        $webClient = New-Object System.Net.WebClient
        $webClient.DownloadFile($zipUrl, $zipPath)

        if (-Not (Test-Path $zipPath)) {
            Write-Error "Download failed. Zip file not found at $zipPath."
            exit 1
        }

        Write-Host "Downloaded zip file to $zipPath."
        return $zipPath
    }
    catch {
        Write-Error "Error downloading the repository: $_"
        exit 1
    }
}

function Update-Files($zipPath) {
    try {
        if (-Not (Test-Path $downloadFolder)) {
            New-Item -Path $downloadFolder -ItemType Directory | Out-Null
        }

        if (-Not (Test-Path $zipPath)) {
            Write-Error "Zip file not found at $zipPath."
            exit 1
        }

        Write-Output "Extracting archive $zipPath..."
        Expand-Archive -Path $zipPath -DestinationPath $downloadFolder -Force

        $extractedFolder = Get-ChildItem -Path $downloadFolder | Where-Object { $_.PSIsContainer -and $_.Name -like "mk1-*" }
        
        if (-Not $extractedFolder) {
            Write-Error "No extracted folder found."
            exit 1
        }

        Write-Output "Moving extracted files..."
        Get-ChildItem -Path "$($extractedFolder.FullName)\*" | ForEach-Object {
            Move-Item -Path $_.FullName -Destination "." -Force -ErrorAction SilentlyContinue
        }

        Write-Output "Cleaning up temporary files..."
        Remove-Item -Path $extractedFolder.FullName -Recurse -Force
        Remove-Item -Path $zipPath -Force

    }
    catch {
        Write-Error "Error updating files: $_"
        exit 1
    }
}

function Update-VersionFile($latestVersion) {
    try {
        Set-Content -Path $versionFile -Value $latestVersion
        Write-Output "$versionFile updated to version $latestVersion."
    }
    catch {
        Write-Error "Error updating `${versionFile}: $_"
        exit 1
    }
}

function Start-Overlay {
    try {
        Start-Process -FilePath ".\$exeName"
        Write-Output "$exeName started."
    }
    catch {
        Write-Error "Failed to start ${exeName}: $_"
        exit 1
    }
}

function Install-Fresh {
    Write-Output "Performing a fresh installation..."

    if (-Not (Test-Path $downloadFolder)) {
        New-Item -Path $downloadFolder -ItemType Directory | Out-Null
    }

    $latestVersion = Get-LatestVersion
    Write-Output "Latest version: $latestVersion"

    $zipPath = Download-Repository $latestVersion

    Update-Files $zipPath

    Update-VersionFile $latestVersion

    Start-Overlay
}

if (-Not (Check-RequiredFiles)) {
    Write-Output "Required files are missing. Initiating fresh installation..."
    Install-Fresh
    exit 0
}

$currentVersion = Get-CurrentVersion
Write-Output "Current version: $currentVersion"

$latestVersion = Get-LatestVersion
Write-Output "Latest version: $latestVersion"

if (Compare-Versions $currentVersion $latestVersion) {
    Write-Output "A new version is available. Starting update..."

    if (-Not (Test-Path $downloadFolder)) {
        New-Item -Path $downloadFolder -ItemType Directory | Out-Null
    }

    $zipPath = Download-Repository $latestVersion

    Update-Files $zipPath

    Update-VersionFile $latestVersion

    Start-Overlay
}
else {
    Write-Output "You have the latest version installed."

    Start-Overlay
}
