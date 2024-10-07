import sys
import os
import configparser
import keyboard
from PyQt5.QtWidgets import (
    QApplication, QMainWindow, QPushButton, QCheckBox, QWidget, QVBoxLayout,
    QLabel, QComboBox, QKeySequenceEdit, QShortcut, QMessageBox, QSpinBox
)
from PyQt5.QtCore import Qt, QPropertyAnimation, QRect, QEasingCurve, QParallelAnimationGroup, QPoint
from PyQt5.QtGui import QFont, QMouseEvent, QKeySequence, QColor
from PyQt5.QtWidgets import QGraphicsDropShadowEffect, QSlider

SPECIAL_KEYS = {
    # Control keys
    Qt.Key_Escape: 0x1B,
    Qt.Key_Tab: 0x09,
    Qt.Key_Return: 0x0D,
    Qt.Key_Backspace: 0x08,
    Qt.Key_Insert: 0x2D,
    Qt.Key_Delete: 0x2E,
    Qt.Key_Home: 0x24,
    Qt.Key_End: 0x23,
    Qt.Key_PageUp: 0x21,
    Qt.Key_PageDown: 0x22,
    Qt.Key_Left: 0x25,
    Qt.Key_Up: 0x26,
    Qt.Key_Right: 0x27,
    Qt.Key_Down: 0x28,

    # Function keys
    Qt.Key_F1: 0x70,
    Qt.Key_F2: 0x71,
    Qt.Key_F3: 0x72,
    Qt.Key_F4: 0x73,
    Qt.Key_F5: 0x74,
    Qt.Key_F6: 0x75,
    Qt.Key_F7: 0x76,
    Qt.Key_F8: 0x77,
    Qt.Key_F9: 0x78,
    Qt.Key_F10: 0x79,
    Qt.Key_F11: 0x7A,
    Qt.Key_F12: 0x7B,
    Qt.Key_F13: 0x7C,
    Qt.Key_F14: 0x7D,
    Qt.Key_F15: 0x7E,
    Qt.Key_F16: 0x7F,
    Qt.Key_F17: 0x80,
    Qt.Key_F18: 0x81,
    Qt.Key_F19: 0x82,
    Qt.Key_F20: 0x83,
    Qt.Key_F21: 0x84,
    Qt.Key_F22: 0x85,
    Qt.Key_F23: 0x86,
    Qt.Key_F24: 0x87,

    # Modifier keys
    Qt.Key_Shift: 0x10,
    Qt.Key_Control: 0x11,
    Qt.Key_Alt: 0x12,
    Qt.Key_AltGr: 0xA5,
    Qt.Key_Meta: 0x5B,  # Windows key or Command key on macOS

    # Numpad keys
    Qt.Key_0: 0x30,
    Qt.Key_1: 0x31,
    Qt.Key_2: 0x32,
    Qt.Key_3: 0x33,
    Qt.Key_4: 0x34,
    Qt.Key_5: 0x35,
    Qt.Key_6: 0x36,
    Qt.Key_7: 0x37,
    Qt.Key_8: 0x38,
    Qt.Key_9: 0x39,

    # Letters
    Qt.Key_A: 0x41,
    Qt.Key_B: 0x42,
    Qt.Key_C: 0x43,
    Qt.Key_D: 0x44,
    Qt.Key_E: 0x45,
    Qt.Key_F: 0x46,
    Qt.Key_G: 0x47,
    Qt.Key_H: 0x48,
    Qt.Key_I: 0x49,
    Qt.Key_J: 0x4A,
    Qt.Key_K: 0x4B,
    Qt.Key_L: 0x4C,
    Qt.Key_M: 0x4D,
    Qt.Key_N: 0x4E,
    Qt.Key_O: 0x4F,
    Qt.Key_P: 0x50,
    Qt.Key_Q: 0x51,
    Qt.Key_R: 0x52,
    Qt.Key_S: 0x53,
    Qt.Key_T: 0x54,
    Qt.Key_U: 0x55,
    Qt.Key_V: 0x56,
    Qt.Key_W: 0x57,
    Qt.Key_X: 0x58,
    Qt.Key_Y: 0x59,
    Qt.Key_Z: 0x5A,

    # Numpad keys
    Qt.Key_0 + 0x1000: 0x60,  # Qt Keypad 0
    Qt.Key_1 + 0x1000: 0x61,  # Qt Keypad 1
    Qt.Key_2 + 0x1000: 0x62,  # Qt Keypad 2
    Qt.Key_3 + 0x1000: 0x63,  # Qt Keypad 3
    Qt.Key_4 + 0x1000: 0x64,  # Qt Keypad 4
    Qt.Key_5 + 0x1000: 0x65,  # Qt Keypad 5
    Qt.Key_6 + 0x1000: 0x66,  # Qt Keypad 6
    Qt.Key_7 + 0x1000: 0x67,  # Qt Keypad 7
    Qt.Key_8 + 0x1000: 0x68,  # Qt Keypad 8
    Qt.Key_9 + 0x1000: 0x69,  # Qt Keypad 9
    Qt.Key_Asterisk: 0x6A,  # Numpad multiply
    Qt.Key_Plus: 0x6B,      # Numpad add
    Qt.Key_Minus: 0x6D,     # Numpad subtract
    Qt.Key_Period: 0x6E,    # Numpad decimal point
    Qt.Key_Slash: 0x6F,     # Numpad divide

    # Misc keys
    Qt.Key_CapsLock: 0x14,
    Qt.Key_NumLock: 0x90,
    Qt.Key_ScrollLock: 0x91,
    Qt.Key_Print: 0x2C,
    Qt.Key_Pause: 0x13,
    Qt.Key_Menu: 0x5D,
    
    # Space key
    Qt.Key_Space: 0x20,  # Space key
}

def qt_key_to_vk_code(qt_key):
    if qt_key is None:
        return None

    if qt_key in SPECIAL_KEYS:
        return SPECIAL_KEYS[qt_key]
    elif Qt.Key_A <= qt_key <= Qt.Key_Z:
        return qt_key
    elif Qt.Key_0 <= qt_key <= Qt.Key_9:
        return qt_key
    elif Qt.Key_F1 <= qt_key <= Qt.Key_F24:
        return qt_key
    elif Qt.Key_Shift <= qt_key <= Qt.Key_Meta:
        return SPECIAL_KEYS.get(qt_key)
    else:
        return None


def vk_code_to_qt_key(vk_code):
    reverse_special_keys = {v: k for k, v in SPECIAL_KEYS.items()}
    if vk_code in reverse_special_keys:
        return reverse_special_keys[vk_code]
    elif 0x30 <= vk_code <= 0x39:  # VK_0 - VK_9
        return vk_code
    elif 0x41 <= vk_code <= 0x5A:  # VK_A - VK_Z
        return vk_code
    elif 0x70 <= vk_code <= 0x87:  # VK_F1 - VK_F24
        return vk_code
    elif 0x10 <= vk_code <= 0x12:  # Modifier keys
        return reverse_special_keys[vk_code]
    else:
        return None


class PermashowWindow(QMainWindow):
    def __init__(self, parent=None):
        super().__init__(parent)
        self.setWindowFlags(
            Qt.WindowStaysOnTopHint | Qt.FramelessWindowHint | Qt.Tool
        )
        self.setAttribute(Qt.WA_TranslucentBackground)
        self.setGeometry(400, 100, 250, 150)
        self.setWindowTitle('Permashow')

        self.dragging = False
        self.offset = QPoint()

        self.enabled_label = QLabel(self)
        self.defense_mode_label = QLabel(self)
        self.frame_delay_label = QLabel(self)

        self.default_font_size = 16

        for label in [self.enabled_label, self.defense_mode_label, self.frame_delay_label]:
            label.setAlignment(Qt.AlignCenter)
            self.add_shadow(label)
            self.set_default_font(label)

        self.update_labels_geometry()

        self.setStyleSheet("""
            QLabel {
                color: white;
            }
            QWidget {
                background-color: rgba(30, 30, 30, 200);
                border-radius: 10px;
            }
        """)

        self.update_enabled_label(False)
        self.update_defense_mode_label('Auto')
        self.update_frame_delay_label(0)

    def set_default_font(self, label):
        font = label.font()
        font.setPointSize(self.default_font_size)
        label.setFont(font)

    def update_enabled_label(self, enabled):
        self.enabled_label.setText(f"Defense: {'Enabled' if enabled else 'Disabled'}")

    def update_defense_mode_label(self, mode):
        self.defense_mode_label.setText(f"Defense Mode: {mode}")

    def update_frame_delay_label(self, delay):
        self.frame_delay_label.setText(f"Frame Delay: {delay}")

    def add_shadow(self, widget):
        shadow_effect = QGraphicsDropShadowEffect(self)
        shadow_effect.setBlurRadius(10)
        shadow_effect.setOffset(2, 2)
        shadow_effect.setColor(QColor(0, 0, 0, 160))
        widget.setGraphicsEffect(shadow_effect)

    def update_labels_geometry(self):
        width = self.width()
        height = self.height()
        label_height = height // 3
        self.enabled_label.setGeometry(0, 0, width, label_height)
        self.defense_mode_label.setGeometry(0, label_height, width, label_height)
        self.frame_delay_label.setGeometry(0, 2 * label_height, width, label_height)

    def mousePressEvent(self, event: QMouseEvent):
        if event.button() == Qt.LeftButton:
            self.dragging = True
            self.offset = event.pos()

    def mouseMoveEvent(self, event: QMouseEvent):
        if self.dragging:
            self.move(event.globalPos() - self.offset)

    def mouseReleaseEvent(self, event: QMouseEvent):
        if event.button() == Qt.LeftButton:
            self.dragging = False

class MenuOverlay(QMainWindow):
    def __init__(self):
        super().__init__()

        self.setWindowFlags(
            Qt.WindowStaysOnTopHint | Qt.FramelessWindowHint | Qt.Tool
        )

        self.setAttribute(Qt.WA_TranslucentBackground)
        self.submenus = []
        self.main_widgets = []
        self.dragging = False
        self.offset = QPoint()
        self.shortcuts = {}
        self.is_animating = False
        self.current_open_submenu_index = None

        self.script_dir = os.path.dirname(os.path.abspath(sys.argv[0]))
        self.config_file = os.path.join(self.script_dir, "settings.ini")
        self.config = configparser.ConfigParser()

        self.loading = True

        self.previous_toggle_keybind = QKeySequence()
        self.previous_mode_keybind = QKeySequence()
        self.previous_increase_keybind = QKeySequence()
        self.previous_decrease_keybind = QKeySequence()
        self.previous_mk1_block_keybind = QKeySequence()

        self.permashow_window = PermashowWindow(self)
        self.permashow_window.show()

        self.initUI()
        self.load_settings()
        self.update_permashow()
        self.loading = False

        self.submenu_heights = [0] * len(self.submenus)

        keyboard.add_hotkey('delete', self.toggle_overlay_visibility)

    def toggle_overlay_visibility(self):
        if self.isVisible():
            self.hide()
        else:
            self.show()

    def initUI(self):
        self.setGeometry(100, 100, 300, 1000)
        self.setWindowTitle('Modern Overlay')

        self.create_main_widgets()

        self.create_submenus()

        self.setStyleSheet("""
            QWidget {
                background-color: rgba(30, 30, 30, 200);
                border-radius: 10px;
                color: white;
            }
            
            QPushButton {
                background-color: rgba(60, 60, 60, 200);
                border: none;
                border-radius: 5px;
                font-size: 14px;
            }
            
            QPushButton:hover {
                background-color: rgba(80, 80, 80, 200);
            }
            
            QCheckBox::indicator, QRadioButton::indicator {
                width: 18px;
                height: 18px;
                border-radius: 3px;
                background-color: rgba(60, 60, 60, 200);
            }
            
            QCheckBox::indicator:checked, QRadioButton::indicator:checked {
                background-color: #4CAF50;
            }
            
            QSlider::groove:horizontal {
                background: rgba(60, 60, 60, 200);
                height: 8px;
                border-radius: 4px;
            }
            
            QSlider::handle:horizontal {
                background: #4CAF50;
                width: 18px;
                height: 18px;
                margin: -5px 0;
                border-radius: 9px;
            }
            
            QLineEdit, QComboBox, QSpinBox {
                background-color: rgba(60, 60, 60, 200);
                border: none;
                padding: 5px;
            }
            
            QProgressBar {
                border: 2px solid grey;
                border-radius: 5px;
                text-align: center;
            }
            
            QProgressBar::chunk {
                background-color: #4CAF50;
                width: 10px;
                margin: 0.5px;
            }
            
            QKeySequenceEdit {
                background-color: rgba(60, 60, 60, 200);
                border: none;
                padding: 5px;
                color: white;
            }
        """)

        font = QFont("Arial", 10)
        self.setFont(font)
        self.show()

    def create_main_widgets(self):
        y_pos = 10

        widget = QWidget(self)
        widget.setGeometry(20, y_pos, 260, 60)
        label = QLabel('Shulepin Script', widget)
        label.setAlignment(Qt.AlignCenter)
        label.setStyleSheet("font-size: 16px; font-weight: bold;")
        label.setGeometry(10, 10, 240, 40)
        self.add_shadow(label)
        self.main_widgets.append(widget)
        y_pos += 60 

        widget = QWidget(self)
        widget.setGeometry(20, y_pos, 260, 60)
        button = QPushButton('Defense Settings', widget)
        button.setGeometry(10, 10, 240, 40)
        button.clicked.connect(lambda: self.toggle_submenu(0))
        self.add_shadow(button)
        self.main_widgets.append(widget)
        y_pos += 60 

        widget = QWidget(self)
        widget.setGeometry(20, y_pos, 260, 60)
        button = QPushButton('Frame Delay Settings', widget)
        button.setGeometry(10, 10, 240, 40)
        button.clicked.connect(lambda: self.toggle_submenu(1))
        self.add_shadow(button)
        self.main_widgets.append(widget)
        y_pos += 60

        widget = QWidget(self)
        widget.setGeometry(20, y_pos, 260, 60)
        button = QPushButton('Permashow Settings', widget)
        button.setGeometry(10, 10, 240, 40)
        button.clicked.connect(lambda: self.toggle_submenu(2))
        self.add_shadow(button)
        self.main_widgets.append(widget)

    def add_shadow(self, widget):
        shadow_effect = QGraphicsDropShadowEffect(self)
        shadow_effect.setBlurRadius(10)
        shadow_effect.setOffset(2, 2)
        shadow_effect.setColor(QColor(0, 0, 0, 160))
        widget.setGraphicsEffect(shadow_effect)

    def create_submenus(self):
        defense_submenu = QWidget(self)
        layout = QVBoxLayout(defense_submenu)
        layout.setContentsMargins(10, 10, 10, 10)

        self.enabled_checkbox = QCheckBox("Enabled")
        layout.addWidget(self.enabled_checkbox)
        self.add_shadow(self.enabled_checkbox)
        self.enabled_checkbox.stateChanged.connect(self.save_settings)
        self.enabled_checkbox.stateChanged.connect(self.update_permashow)

        layout.addWidget(QLabel("Defense Mode:"))
        self.defense_mode_combo = QComboBox()
        self.defense_mode_combo.addItems(["Auto", "Manual"])
        layout.addWidget(self.defense_mode_combo)
        self.add_shadow(self.defense_mode_combo)
        self.defense_mode_combo.currentIndexChanged.connect(self.save_settings)
        self.defense_mode_combo.currentIndexChanged.connect(self.update_permashow)

        layout.addWidget(QLabel("Defense Toggle Keybind:"))
        self.defense_toggle_keybind = QKeySequenceEdit()
        layout.addWidget(self.defense_toggle_keybind)
        self.add_shadow(self.defense_toggle_keybind)
        self.defense_toggle_keybind.keySequenceChanged.connect(lambda: self.handle_key_sequence_change(0))
        self.defense_toggle_keybind.keySequenceChanged.connect(self.save_settings)

        layout.addWidget(QLabel("Defense Mode Keybind:"))
        self.defense_mode_keybind = QKeySequenceEdit()
        layout.addWidget(self.defense_mode_keybind)
        self.add_shadow(self.defense_mode_keybind)
        self.defense_mode_keybind.keySequenceChanged.connect(lambda: self.handle_key_sequence_change(1))
        self.defense_mode_keybind.keySequenceChanged.connect(self.save_settings)

        layout.addWidget(QLabel("MK1 Block Keybind:"))
        self.mk1_block_keybind = QKeySequenceEdit()
        layout.addWidget(self.mk1_block_keybind)
        self.add_shadow(self.mk1_block_keybind)
        self.mk1_block_keybind.keySequenceChanged.connect(lambda: self.handle_key_sequence_change(4))
        self.mk1_block_keybind.keySequenceChanged.connect(self.save_settings)

        self.submenus.append(defense_submenu)
        defense_submenu.setGeometry(20, 0, 260, 0)
        defense_submenu.hide()

        frame_delay_submenu = QWidget(self)
        layout = QVBoxLayout(frame_delay_submenu)
        layout.setContentsMargins(10, 10, 10, 10)

        layout.addWidget(QLabel("Frame Delay:"))
        self.frame_delay_spinbox = QSpinBox()
        self.frame_delay_spinbox.setRange(0, 5)
        self.frame_delay_spinbox.setValue(0)
        layout.addWidget(self.frame_delay_spinbox)
        self.add_shadow(self.frame_delay_spinbox)
        self.frame_delay_spinbox.valueChanged.connect(self.save_settings)
        self.frame_delay_spinbox.valueChanged.connect(self.update_permashow)

        layout.addWidget(QLabel("Increase Frame Delay Keybind:"))
        self.increase_keybind = QKeySequenceEdit()
        layout.addWidget(self.increase_keybind)
        self.add_shadow(self.increase_keybind)
        self.increase_keybind.keySequenceChanged.connect(lambda: self.handle_key_sequence_change(2))
        self.increase_keybind.keySequenceChanged.connect(self.save_settings)
        self.increase_keybind.keySequenceChanged.connect(self.update_permashow)

        layout.addWidget(QLabel("Decrease Frame Delay Keybind:"))
        self.decrease_keybind = QKeySequenceEdit()
        layout.addWidget(self.decrease_keybind)
        self.add_shadow(self.decrease_keybind)
        self.decrease_keybind.keySequenceChanged.connect(lambda: self.handle_key_sequence_change(3))
        self.decrease_keybind.keySequenceChanged.connect(self.save_settings)
        self.decrease_keybind.keySequenceChanged.connect(self.update_permashow)

        self.submenus.append(frame_delay_submenu)
        frame_delay_submenu.setGeometry(20, 0, 260, 0)
        frame_delay_submenu.hide()

        permashow_submenu = QWidget(self)
        layout = QVBoxLayout(permashow_submenu)
        layout.setContentsMargins(10, 10, 10, 10)

        self.permashow_enabled_checkbox = QCheckBox("Permashow Enabled")
        layout.addWidget(self.permashow_enabled_checkbox)
        self.add_shadow(self.permashow_enabled_checkbox)
        self.permashow_enabled_checkbox.stateChanged.connect(self.toggle_permashow_visibility)
        self.permashow_enabled_checkbox.stateChanged.connect(self.save_settings)

        layout.addWidget(QLabel("Permashow Scale:"))
        self.permashow_scale_slider = QSlider(Qt.Horizontal)
        self.permashow_scale_slider.setRange(50, 200)
        self.permashow_scale_slider.setValue(100)
        self.permashow_scale_slider.setTickPosition(QSlider.TicksBelow)
        self.permashow_scale_slider.setTickInterval(25)
        layout.addWidget(self.permashow_scale_slider)
        self.add_shadow(self.permashow_scale_slider)
        self.permashow_scale_slider.valueChanged.connect(self.update_permashow_scale)
        self.permashow_scale_slider.valueChanged.connect(self.save_settings)

        self.submenus.append(permashow_submenu)
        permashow_submenu.setGeometry(20, 0, 260, 0)
        permashow_submenu.hide()

        self.submenu_heights = [0] * len(self.submenus)

    def update_permashow_scale(self):
        scale = self.permashow_scale_slider.value() / 100
        current_geometry = self.permashow_window.geometry()
        new_width = int(250 * scale)
        new_height = int(150 * scale)
        self.permashow_window.setGeometry(
            current_geometry.x(),
            current_geometry.y(),
            new_width,
            new_height
        )
        
        for label in [self.permashow_window.enabled_label, 
                    self.permashow_window.defense_mode_label, 
                    self.permashow_window.frame_delay_label]:
            font = label.font()
            font.setPointSize(int(self.permashow_window.default_font_size * scale))
            label.setFont(font)
            label.adjustSize()
        
        self.permashow_window.update_labels_geometry()

    def toggle_permashow_visibility(self):
        if self.permashow_enabled_checkbox.isChecked():
            self.permashow_window.show()
        else:
            self.permashow_window.hide()

    def update_permashow(self):
        enabled = self.enabled_checkbox.isChecked()
        defense_mode = self.defense_mode_combo.currentText()
        frame_delay = self.frame_delay_spinbox.value()
        
        self.permashow_window.update_enabled_label(enabled)
        self.permashow_window.update_defense_mode_label(defense_mode)
        self.permashow_window.update_frame_delay_label(frame_delay)

    def load_settings(self):
        super().load_settings()

        if 'PermashowSettings' in self.config:
            settings = self.config['PermashowSettings']

            permashow_enabled = settings.getboolean('PermashowEnabled', fallback=True)
            self.permashow_enabled_checkbox.setChecked(permashow_enabled)
            self.toggle_permashow_visibility()

            permashow_scale = settings.getint('PermashowScale', fallback=100)
            self.permashow_scale_slider.setValue(permashow_scale)
            
            self.update_permashow_scale()

        self.update_permashow()

    def save_settings(self):
        super().save_settings()

        if 'PermashowSettings' not in self.config:
            self.config.add_section('PermashowSettings')

        settings = self.config['PermashowSettings']
        settings['PermashowEnabled'] = str(self.permashow_enabled_checkbox.isChecked())
        settings['PermashowScale'] = str(self.permashow_scale_slider.value())

        with open(self.config_file, 'w') as configfile:
            self.config.write(configfile)

        self.update_permashow()

    def toggle_submenu(self, index):
        if self.is_animating:
            return

        if self.current_open_submenu_index == index:
            self.close_submenu(index)
        elif self.current_open_submenu_index is None:
            self.open_submenu(index)
        else:
            current_index = self.current_open_submenu_index
            self.close_submenu(current_index, lambda: self.open_submenu(index))

    def open_submenu(self, index):
        submenu = self.submenus[index]
        submenu.show()
        base_pos = self.main_widgets[index + 1].y()
        submenu_pos = base_pos
        submenu.setGeometry(20, submenu_pos, 260, 0)
        target_height = self.get_submenu_height(index)

        self.animation_group = QParallelAnimationGroup()

        submenu_animation = QPropertyAnimation(submenu, b"geometry")
        submenu_animation.setDuration(300)
        submenu_animation.setStartValue(QRect(20, submenu_pos, 260, 0))
        submenu_animation.setEndValue(QRect(20, submenu_pos, 260, target_height))
        submenu_animation.setEasingCurve(QEasingCurve.OutCubic)
        self.animation_group.addAnimation(submenu_animation)

        for i in range(index + 1, len(self.main_widgets)):
            widget = self.main_widgets[i]
            start_pos = widget.y()
            end_pos = start_pos + target_height
            widget_animation = QPropertyAnimation(widget, b"pos")
            widget_animation.setDuration(300)
            widget_animation.setStartValue(QPoint(widget.x(), start_pos))
            widget_animation.setEndValue(QPoint(widget.x(), end_pos))
            widget_animation.setEasingCurve(QEasingCurve.OutCubic)
            self.animation_group.addAnimation(widget_animation)

        window_animation = QPropertyAnimation(self, b"geometry")
        window_animation.setDuration(300)
        window_animation.setStartValue(self.geometry())
        window_animation.setEndValue(QRect(
            self.x(),
            self.y(),
            self.width(),
            self.height() + target_height
        ))
        window_animation.setEasingCurve(QEasingCurve.OutCubic)
        self.animation_group.addAnimation(window_animation)

        self.is_animating = True

        self.animation_group.finished.connect(lambda: self.on_open_submenu_finished(index, target_height))

        self.animation_group.start()

    def on_open_submenu_finished(self, index, target_height):
        if 0 <= index < len(self.submenus):
            self.submenu_heights[index] = target_height
            self.is_animating = False
            self.current_open_submenu_index = index

    def close_submenu(self, index, callback=None):
        submenu = self.submenus[index]
        submenu_pos = submenu.y()
        current_height = self.submenu_heights[index]

        self.animation_group = QParallelAnimationGroup()

        submenu_animation = QPropertyAnimation(submenu, b"geometry")
        submenu_animation.setDuration(300)
        submenu_animation.setStartValue(QRect(20, submenu_pos, 260, current_height))
        submenu_animation.setEndValue(QRect(20, submenu_pos, 260, 0))
        submenu_animation.setEasingCurve(QEasingCurve.OutCubic)
        self.animation_group.addAnimation(submenu_animation)

        for i in range(index + 1, len(self.main_widgets)):
            widget = self.main_widgets[i]
            start_pos = widget.y()
            end_pos = start_pos - current_height
            widget_animation = QPropertyAnimation(widget, b"pos")
            widget_animation.setDuration(300)
            widget_animation.setStartValue(QPoint(widget.x(), start_pos))
            widget_animation.setEndValue(QPoint(widget.x(), end_pos))
            widget_animation.setEasingCurve(QEasingCurve.OutCubic)
            self.animation_group.addAnimation(widget_animation)

        window_animation = QPropertyAnimation(self, b"geometry")
        window_animation.setDuration(300)
        window_animation.setStartValue(self.geometry())
        window_animation.setEndValue(QRect(
            self.x(),
            self.y(),
            self.width(),
            self.height() - current_height
        ))
        window_animation.setEasingCurve(QEasingCurve.OutCubic)
        self.animation_group.addAnimation(window_animation)

        self.is_animating = True

        self.animation_group.finished.connect(lambda: self.on_close_submenu_finished(index, callback))

        self.animation_group.start()

    def on_close_submenu_finished(self, index, callback):
        self.submenus[index].hide()
        self.submenu_heights[index] = 0
        self.is_animating = False

        if self.current_open_submenu_index == index:
            self.current_open_submenu_index = None

        if callback:
            callback() 

    def get_submenu_height(self, index):
        if index == 0:
            return 250
        elif index == 1:
            return 150
        elif index == 2:
            return 100
        return 0

    def handle_key_sequence_change(self, keybind_type):
        if keybind_type == 0:
            key_sequence = self.defense_toggle_keybind.keySequence()
            previous_sequence = self.previous_toggle_keybind
            keybind_name = 'toggle_enabled'
            action = self.toggle_enabled
            keybind_edit = self.defense_toggle_keybind
        elif keybind_type == 1:
            key_sequence = self.defense_mode_keybind.keySequence()
            previous_sequence = self.previous_mode_keybind
            keybind_name = 'toggle_defense_mode'
            action = self.toggle_defense_mode
            keybind_edit = self.defense_mode_keybind
        elif keybind_type == 2:
            key_sequence = self.increase_keybind.keySequence()
            previous_sequence = self.previous_increase_keybind
            keybind_name = 'increase_frame_delay'
            action = self.increase_frame_delay
            keybind_edit = self.increase_keybind
        elif keybind_type == 3:
            key_sequence = self.decrease_keybind.keySequence()
            previous_sequence = self.previous_decrease_keybind
            keybind_name = 'decrease_frame_delay'
            action = self.decrease_frame_delay
            keybind_edit = self.decrease_keybind
        elif keybind_type == 4:
            key_sequence = self.mk1_block_keybind.keySequence()
            previous_sequence = self.previous_mk1_block_keybind
            keybind_name = 'mk1_block'
            action = self.mk1_block_action
            keybind_edit = self.mk1_block_keybind
        else:
            return

        if key_sequence.count() > 1:
            QMessageBox.warning(
                self,
                "Invalid key combination",
                "Please assign only one key without combinations."
            )

            keybind_edit.blockSignals(True)
            keybind_edit.setKeySequence(previous_sequence)
            keybind_edit.blockSignals(False)
            return

        key = key_sequence[0] if key_sequence.count() > 0 else None
        if key is None:
            if keybind_type == 0:
                self.previous_toggle_keybind = QKeySequence()
            elif keybind_type == 1:
                self.previous_mode_keybind = QKeySequence()
            elif keybind_type == 2:
                self.previous_increase_keybind = QKeySequence()
            elif keybind_type == 3:
                self.previous_decrease_keybind = QKeySequence()
            return

        qt_key = key
        vk_code = qt_key_to_vk_code(qt_key)
        if vk_code is None:
            QMessageBox.warning(
                self,
                "Wrong key",
                "Please select a supported key."
            )

            keybind_edit.blockSignals(True)
            keybind_edit.setKeySequence(previous_sequence)
            keybind_edit.blockSignals(False)
            return

        if keybind_type == 0:
            self.previous_toggle_keybind = QKeySequence(qt_key)
        elif keybind_type == 1:
            self.previous_mode_keybind = QKeySequence(qt_key)
        elif keybind_type == 2:
            self.previous_increase_keybind = QKeySequence(qt_key)
        elif keybind_type == 3:
            self.previous_decrease_keybind = QKeySequence(qt_key)

        self.update_shortcut(keybind_type)


    def update_shortcut(self, keybind_type):
        if keybind_type == 0:
            key_sequence = self.defense_toggle_keybind.keySequence()
            action = self.toggle_enabled
            shortcut_name = 'toggle_enabled'
        elif keybind_type == 1:
            key_sequence = self.defense_mode_keybind.keySequence()
            action = self.toggle_defense_mode
            shortcut_name = 'toggle_defense_mode'
        elif keybind_type == 2:
            key_sequence = self.increase_keybind.keySequence()
            action = self.increase_frame_delay
            shortcut_name = 'increase_frame_delay'
        elif keybind_type == 3:
            key_sequence = self.decrease_keybind.keySequence()
            action = self.decrease_frame_delay
            shortcut_name = 'decrease_frame_delay'
        else:
            return

        if shortcut_name in self.shortcuts:
            keyboard.remove_hotkey(self.shortcuts[shortcut_name])
            del self.shortcuts[shortcut_name]

        if not key_sequence.isEmpty():
            key = key_sequence.toString(QKeySequence.NativeText).lower()
            hotkey = keyboard.add_hotkey(key, action)
            self.shortcuts[shortcut_name] = hotkey
            print(f"Created global shortcut: {shortcut_name} with keys {key}")

    def toggle_enabled(self):
        current_state = self.enabled_checkbox.isChecked()
        self.enabled_checkbox.setChecked(not current_state)
        print(f"Enabled checkbox toggled to {not current_state}")

    def toggle_defense_mode(self):
        current_index = self.defense_mode_combo.currentIndex()
        new_index = 1 - current_index
        self.defense_mode_combo.setCurrentIndex(new_index)
        print(f"Defense mode changed to {self.defense_mode_combo.currentText()}")

    def increase_frame_delay(self):
        current_value = self.frame_delay_spinbox.value()
        if current_value < 5:
            self.frame_delay_spinbox.setValue(current_value + 1)
            print(f"Frame Delay increased to {current_value + 1}")
        else:
            print("Frame Delay is already at maximum value (5)")

    def decrease_frame_delay(self):
        current_value = self.frame_delay_spinbox.value()
        if current_value > 0:
            self.frame_delay_spinbox.setValue(current_value - 1)
            print(f"Frame Delay decreased to {current_value - 1}")
        else:
            print("Frame Delay is already at minimum value (0)")

    def mk1_block_action(self):
        print("MK1 Block Action triggered")

    def load_settings(self):
        try:
            if os.path.exists(self.config_file):
                self.config.read(self.config_file)
                print(f"Loaded configuration from {self.config_file}")
                if 'DefenseSettings' in self.config:
                    settings = self.config['DefenseSettings']

                    self.enabled_checkbox.blockSignals(True)
                    self.defense_mode_combo.blockSignals(True)
                    self.defense_toggle_keybind.blockSignals(True)
                    self.defense_mode_keybind.blockSignals(True)

                    enabled = settings.getboolean('Enabled', fallback=False)
                    self.enabled_checkbox.setChecked(enabled)
                    print(f"Loaded Enabled: {enabled}")

                    defense_mode = settings.get('DefenseMode', fallback='Auto')
                    index = self.defense_mode_combo.findText(defense_mode)
                    if index != -1:
                        self.defense_mode_combo.setCurrentIndex(index)
                        print(f"Loaded Defense Mode: {defense_mode}")

                    toggle_keybind = settings.get('DefenseToggleKeybind', fallback='')
                    if toggle_keybind:
                        try:
                            vk_code = int(toggle_keybind)
                            qt_key = vk_code_to_qt_key(vk_code)
                            if qt_key:
                                key_sequence = QKeySequence(qt_key)
                                self.defense_toggle_keybind.setKeySequence(key_sequence)
                                self.previous_toggle_keybind = key_sequence
                                print(f"Loaded Defense Toggle Keybind: VK_CODE {vk_code}")
                                self.update_shortcut(0)
                            else:
                                print(f"Unsupported VK_CODE {vk_code} for Defense Toggle Keybind")
                        except ValueError:
                            print(f"Invalid VK_CODE {toggle_keybind} for Defense Toggle Keybind")

                    mode_keybind = settings.get('DefenseModeKeybind', fallback='')
                    if mode_keybind:
                        try:
                            vk_code = int(mode_keybind)
                            qt_key = vk_code_to_qt_key(vk_code)
                            if qt_key:
                                key_sequence = QKeySequence(qt_key)
                                self.defense_mode_keybind.setKeySequence(key_sequence)
                                self.previous_mode_keybind = key_sequence
                                print(f"Loaded Defense Mode Keybind: VK_CODE {vk_code}")
                                self.update_shortcut(1)
                            else:
                                print(f"Unsupported VK_CODE {vk_code} for Defense Mode Keybind")
                        except ValueError:
                            print(f"Invalid VK_CODE {mode_keybind} for Defense Mode Keybind")
                    
                    mk1_block_keybind = settings.get('MK1BlockKeybind', fallback='')
                    if mk1_block_keybind:
                        try:
                            vk_code = int(mk1_block_keybind)
                            qt_key = vk_code_to_qt_key(vk_code)
                            if qt_key:
                                key_sequence = QKeySequence(qt_key)
                                self.mk1_block_keybind.setKeySequence(key_sequence)
                                self.previous_mk1_block_keybind = key_sequence
                                print(f"Loaded MK1 Block Keybind: VK_CODE {vk_code}")
                                self.update_shortcut(4)
                            else:
                                print(f"Unsupported VK_CODE {vk_code} for MK1 Block Keybind")
                        except ValueError:
                            print(f"Invalid VK_CODE {mk1_block_keybind} for MK1 Block Keybind")

                    self.enabled_checkbox.blockSignals(False)
                    self.defense_mode_combo.blockSignals(False)
                    self.defense_toggle_keybind.blockSignals(False)
                    self.defense_mode_keybind.blockSignals(False)
                else:
                    print("Section 'DefenseSettings' not found in INI file.")

                if 'FrameDelaySettings' in self.config:
                    settings = self.config['FrameDelaySettings']

                    self.frame_delay_spinbox.blockSignals(True)
                    self.increase_keybind.blockSignals(True)
                    self.decrease_keybind.blockSignals(True)

                    frame_delay = settings.getint('FrameDelay', fallback=0)
                    self.frame_delay_spinbox.setValue(frame_delay)
                    print(f"Loaded Frame Delay: {frame_delay}")

                    increase_keybind = settings.get('IncreaseFrameDelayKeybind', fallback='')
                    if increase_keybind:
                        try:
                            vk_code = int(increase_keybind)
                            qt_key = vk_code_to_qt_key(vk_code)
                            if qt_key:
                                key_sequence = QKeySequence(qt_key)
                                self.increase_keybind.setKeySequence(key_sequence)
                                self.previous_increase_keybind = key_sequence
                                print(f"Loaded Increase Frame Delay Keybind: VK_CODE {vk_code}")
                                self.update_shortcut(2)
                            else:
                                print(f"Unsupported VK_CODE {vk_code} for Increase Frame Delay Keybind")
                        except ValueError:
                            print(f"Invalid VK_CODE {increase_keybind} for Increase Frame Delay Keybind")

                    decrease_keybind = settings.get('DecreaseFrameDelayKeybind', fallback='')
                    if decrease_keybind:
                        try:
                            vk_code = int(decrease_keybind)
                            qt_key = vk_code_to_qt_key(vk_code)
                            if qt_key:
                                key_sequence = QKeySequence(qt_key)
                                self.decrease_keybind.setKeySequence(key_sequence)
                                self.previous_decrease_keybind = key_sequence
                                print(f"Loaded Decrease Frame Delay Keybind: VK_CODE {vk_code}")
                                self.update_shortcut(3)
                            else:
                                print(f"Unsupported VK_CODE {vk_code} for Decrease Frame Delay Keybind")
                        except ValueError:
                            print(f"Invalid VK_CODE {decrease_keybind} for Decrease Frame Delay Keybind")

                    self.frame_delay_spinbox.blockSignals(False)
                    self.increase_keybind.blockSignals(False)
                    self.decrease_keybind.blockSignals(False)
                else:
                    print("Section 'FrameDelaySettings' not found in INI file.")
                
                if 'PermashowSettings' in self.config:
                    settings = self.config['PermashowSettings']

                    permashow_enabled = settings.getboolean('PermashowEnabled', fallback=True)
                    self.permashow_enabled_checkbox.setChecked(permashow_enabled)
                    self.toggle_permashow_visibility()

                    permashow_scale = settings.getint('PermashowScale', fallback=100)
                    self.permashow_scale_slider.setValue(permashow_scale)
                    
                    self.update_permashow_scale()
                else:
                    print("Section 'PermashowSettings' not found in INI file.")
            else:
                print(f"Configuration file {self.config_file} does not exist. Using default settings.")
        except Exception as e:
            print(f"Error loading settings: {e}")

    def save_settings(self):
        if self.loading:
            return 

        try:
            if 'DefenseSettings' not in self.config:
                self.config.add_section('DefenseSettings')

            settings = self.config['DefenseSettings']
            settings['Enabled'] = str(self.enabled_checkbox.isChecked())
            settings['DefenseMode'] = self.defense_mode_combo.currentText()

            toggle_keyseq = self.defense_toggle_keybind.keySequence()
            if not toggle_keyseq.isEmpty():
                key = toggle_keyseq[0]
                vk_code = qt_key_to_vk_code(key)
                if vk_code is not None:
                    settings['DefenseToggleKeybind'] = str(vk_code)
                    print(f"Saved Defense Toggle Keybind: VK_CODE {vk_code}")
                else:
                    settings['DefenseToggleKeybind'] = ''
                    print(f"Defense Toggle Keybind: Unsupported key, not saved")
            else:
                settings['DefenseToggleKeybind'] = ''

            mode_keyseq = self.defense_mode_keybind.keySequence()
            if not mode_keyseq.isEmpty():
                key = mode_keyseq[0]
                vk_code = qt_key_to_vk_code(key)
                if vk_code is not None:
                    settings['DefenseModeKeybind'] = str(vk_code)
                    print(f"Saved Defense Mode Keybind: VK_CODE {vk_code}")
                else:
                    settings['DefenseModeKeybind'] = ''
                    print(f"Defense Mode Keybind: Unsupported key, not saved")
            else:
                settings['DefenseModeKeybind'] = ''

            mk1_block_keyseq = self.mk1_block_keybind.keySequence()
            if not mk1_block_keyseq.isEmpty():
                key = mk1_block_keyseq[0]
                vk_code = qt_key_to_vk_code(key)
                if vk_code is not None:
                    settings['MK1BlockKeybind'] = str(vk_code)
                    print(f"Saved MK1 Block Keybind: VK_CODE {vk_code}")
                else:
                    settings['MK1BlockKeybind'] = ''
                    print(f"MK1 Block Keybind: Unsupported key, not saved")
            else:
                settings['MK1BlockKeybind'] = ''

            if 'FrameDelaySettings' not in self.config:
                self.config.add_section('FrameDelaySettings')

            settings = self.config['FrameDelaySettings']
            settings['FrameDelay'] = str(self.frame_delay_spinbox.value())

            increase_keyseq = self.increase_keybind.keySequence()
            if not increase_keyseq.isEmpty():
                key = increase_keyseq[0]
                vk_code = qt_key_to_vk_code(key)
                if vk_code is not None:
                    settings['IncreaseFrameDelayKeybind'] = str(vk_code)
                    print(f"Saved Increase Frame Delay Keybind: VK_CODE {vk_code}")
                else:
                    settings['IncreaseFrameDelayKeybind'] = ''
                    print(f"Increase Frame Delay Keybind: Unsupported key, not saved")
            else:
                settings['IncreaseFrameDelayKeybind'] = ''

            decrease_keyseq = self.decrease_keybind.keySequence()
            if not decrease_keyseq.isEmpty():
                key = decrease_keyseq[0]
                vk_code = qt_key_to_vk_code(key)
                if vk_code is not None:
                    settings['DecreaseFrameDelayKeybind'] = str(vk_code)
                    print(f"Saved Decrease Frame Delay Keybind: VK_CODE {vk_code}")
                else:
                    settings['DecreaseFrameDelayKeybind'] = ''
                    print(f"Decrease Frame Delay Keybind: Unsupported key, not saved")
            else:
                settings['DecreaseFrameDelayKeybind'] = ''

            if 'PermashowSettings' not in self.config:
                self.config.add_section('PermashowSettings')

            settings = self.config['PermashowSettings']
            settings['PermashowEnabled'] = str(self.permashow_enabled_checkbox.isChecked())
            settings['PermashowScale'] = str(self.permashow_scale_slider.value())

            with open(self.config_file, 'w') as configfile:
                self.config.write(configfile)
            print(f"Settings saved to {self.config_file}")

        except Exception as e:
            print(f"Error saving settings: {e}")

    def mousePressEvent(self, event: QMouseEvent):
        if event.button() == Qt.LeftButton:
            self.dragging = True
            self.offset = event.pos()

    def mouseMoveEvent(self, event: QMouseEvent):
        if self.dragging:
            self.move(event.globalPos() - self.offset)

    def mouseReleaseEvent(self, event: QMouseEvent):
        if event.button() == Qt.LeftButton:
            self.dragging = False

    def closeEvent(self, event):
        for hotkey in self.shortcuts.values():
            keyboard.remove_hotkey(hotkey)
        keyboard.remove_hotkey('delete')
        self.save_settings()
        event.accept()

if __name__ == '__main__':
    app = QApplication(sys.argv)
    ex = MenuOverlay()
    sys.exit(app.exec_())
