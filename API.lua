---@diagnostic disable: lowercase-global, missing-return

--- Get the local player's distance from the opponent
--- @return number Distance between local player and opponent
function getLocalDistanceFromOpponent() end

--- Check if the local player is attacking (only detects the first part of a move)
--- @return boolean True if the local player is attacking, false otherwise
function getLocalIsAttacking() end

--- Check if the opponent is attacking (only detects the first part of a move)
--- @return boolean True if the opponent is attacking, false otherwise
function getOpponentIsAttacking() end

--- Check if the local player is getting thrown
--- @return boolean True if the local player is getting thrown, false otherwise
function getLocalIsGettingThrown() end

--- Check if the opponent is getting thrown
--- @return boolean True if the opponent is getting thrown, false otherwise
function getOpponentIsGettingThrown() end

--- Check if the local Kameo character is getting thrown
--- @return boolean True if the local Kameo character is getting thrown, false otherwise
function getLocalIsGettingThrownKameo() end

--- Check if the opponent's Kameo character is getting thrown
--- @return boolean True if the opponent's Kameo character is getting thrown, false otherwise
function getOpponentIsGettingThrownKameo() end

--- Get the local player's character hash
--- @return integer The character hash of the local player
function getLocalCharacterHash() end

--- Get the opponent's character hash
--- @return integer The character hash of the opponent
function getOpponentCharacterHash() end

--- Get the startup frame of the local player's current move
--- @return integer Number of frames for the startup of the local move
function getLocalMoveStartupFrame() end

--- Get the startup frame of the opponent's current move
--- @return integer Number of frames for the startup of the opponent's move
function getOpponentMoveStartupFrame() end

--- Get the active frame of the local player's current move
--- @return integer Number of frames for the active phase of the local move
function getLocalMoveActiveFrame() end

--- Get the active frame of the opponent's current move
--- @return integer Number of frames for the active phase of the opponent's move
function getOpponentMoveActiveFrame() end

--- Get the recovery frame of the local player's current move
--- @return integer Number of frames for the recovery of the local move
function getLocalMoveRecoveryFrame() end

--- Get the recovery frame of the opponent's current move
--- @return integer Number of frames for the recovery of the opponent's move
function getOpponentMoveRecoveryFrame() end

--- Get the attack type of the local player's current move
--- @return integer Attack type of the local player's move
function getLocalMoveAttackType() end

--- Get the attack type of the opponent's current move
--- @return integer Attack type of the opponent's move
function getOpponentMoveAttackType() end

--- Get the timer for the local player's current move
--- @return integer Move timer for the local player's move
function getLocalMoveTimer() end

--- Get the timer for the opponent's current move
--- @return integer Move timer for the opponent's move
function getOpponentMoveTimer() end

--- Get the local player's current move string
--- @return string Name of the local player's current move
function getLocalMoveString() end

--- Get the opponent's current move string
--- @return string Name of the opponent's current move
function getOpponentMoveString() end

--- Check if the local player is in the air
--- @return boolean True if the local player is in the air, false otherwise
function getLocalIsInAir() end

--- Check if the opponent is in the air
--- @return boolean True if the opponent is in the air, false otherwise
function getOpponentIsInAir() end

--- Get an integer representation of whether the local player is attacking
--- @return integer Integer representation of the local player's attack state
function getLocalAttackingInt() end

--- Get an integer representation of whether the opponent is attacking
--- @return integer Integer representation of the opponent's attack state
function getOpponentAttackingInt() end

--- Check if the local player is not in fatality mode (0 when fatality can be done on them)
--- @return boolean True if the local player is not in fatality mode, false if they are
function getLocalIsNotInFatalityMode() end

--- Check if the opponent is not in fatality mode (0 when fatality can be done on them)
--- @return boolean True if the opponent is not in fatality mode, false if they are
function getOpponentIsNotInFatalityMode() end

--- Get the local player's health as a float
--- @return number Local player's health
function getLocalHealthFloat() end

--- Get the opponent's health as a float
--- @return number Opponent's health
function getOpponentHealthFloat() end

--- Get the local player's character name
--- @return string Local player's character name
function getLocalCharacterName() end

--- Get the opponent's character name
--- @return string Opponent's character name
function getOpponentCharacterName() end

--- Get the local hit state
--- @return string
function getLocalHitConnected() end

--- Get the opponent's hit state
--- @return string
function getOpponentHitConnected() end

function getLocalSuperFloat() end

function getOpponentSuperFloat() end

function getLocalKameoFloat() end

function getOpponentKameoFloat() end

function setLocalIsGettingThrown(bool) end

function setOpponentIsGettingThrown(bool) end

function setLocalIsGettingThrownKameo(bool) end

function setOpponentIsGettingThrownKameo(bool) end

-- Input Commands

--- Press the Up button
function PressInputUpButton() end

--- Press the Down button
function PressInputDownButton() end

--- Press the Left button
function PressInputLeftButton() end

--- Press the Right button
function PressInputRightButton() end

--- Press the Front Punch button
function PressInputFrontPunch() end

--- Press the Front Kick button
function PressInputFrontKick() end

--- Press the Back Punch button
function PressInputBackPunch() end

--- Press the Back Kick button
function PressInputBackKick() end

--- Press the Throw button
function PressInputThrowButton() end

--- Press the Block button
function PressInputBlockButton() end

--- Press the Kameo button
function PressInputKameoButton() end

--- Press the Flip Stance button
function PressInputFlipStanceButton() end

-- Input Release Commands

--- Release the Up button
function ReleaseInputUpButton() end

--- Release the Down button
function ReleaseInputDownButton() end

--- Release the Left button
function ReleaseInputLeftButton() end

--- Release the Right button
function ReleaseInputRightButton() end

--- Release the Front Punch button
function ReleaseInputFrontPunch() end

--- Release the Front Kick button
function ReleaseInputFrontKick() end

--- Release the Back Punch button
function ReleaseInputBackPunch() end

--- Release the Back Kick button
function ReleaseInputBackKick() end

--- Release the Throw button
function ReleaseInputThrowButton() end

--- Release the Block button
function ReleaseInputBlockButton() end

--- Release the Kameo button
function ReleaseInputKameoButton() end

--- Release the Flip Stance button
function ReleaseInputFlipStanceButton() end

-- Auto Blocking

--- Enable auto-blocking state
function EnableAutoBlockingState() end

--- Disable auto-blocking state
function DisableAutoBlockingState() end

--- Get the current state of auto-blocking
--- @return integer 1 if auto-blocking is enabled, 0 otherwise
function GetAutoBlockingState() end

--- Detect if a specific key is pressed, based on the input argument
--- @param keyCode integer The integer code for the key to detect
--- @return boolean True if the key is pressed, false otherwise
function DetectIsKeyPressed(keyCode) end

--- Pause the script execution for a specified time
--- @param milliseconds integer Time in milliseconds to sleep
function OwlSleep(milliseconds) end

--- Enable game input (resumes processing input)
function EnableGameInput() end

--- Disable game input (halts input processing)
function DisableGameInput() end
