# FINDER

# Finder > Preferences > Advanced > Show all filename extensions
defaults write NSGlobalDomain AppleShowAllExtensions -bool true

# Finder > View > Show Path Bar
defaults write com.apple.finder ShowPathbar -bool true

# Finder > Preferences > Advanced > Keep folders on top when sorting by name
defaults write com.apple.finder "_FXSortFoldersFirst" -bool false

# Tool bar
defaults write com.apple.finder "NSToolbar Configuration Browser" '{
    "TB Default Item Identifiers" =     (
        "com.apple.finder.BACK",
        NSToolbarFlexibleSpaceItem,
        "com.apple.finder.SWCH",
        "com.apple.finder.ARNG",
        "com.apple.finder.ACTN",
        "com.apple.finder.SHAR",
        "com.apple.finder.LABL",
        NSToolbarFlexibleSpaceItem,
        NSToolbarFlexibleSpaceItem,
        "com.apple.finder.SRCH"
    );
    "TB Display Mode" = 2;
    "TB Icon Size Mode" = 1;
    "TB Is Shown" = 1;
    "TB Item Identifiers" =     (
        "com.apple.finder.BACK",
        NSToolbarFlexibleSpaceItem,
        "com.apple.finder.SWCH",
        "com.apple.finder.ARNG",
        "com.apple.finder.ACTN",
        "com.apple.finder.SHAR",
        "com.apple.finder.LABL",
        "com.apple.finder.PATH",
        NSToolbarFlexibleSpaceItem,
        NSToolbarFlexibleSpaceItem,
        "com.apple.finder.SRCH"
    );
    "TB Size Mode" = 1;
}'

# General > Sidebar icon size: Medium
defaults write NSGlobalDomain NSTableViewDefaultSizeMode -int 2 # 1 - small; 2 - medium 3 - big

# DOCK SETTINGS

# System Preferences > Dock > Size:
defaults write com.apple.dock tilesize -int 42

# System Preferences > Dock > Magnification:
defaults write com.apple.dock magnification -bool false

# System Preferences > Dock > Minimize windows using: Genie effect
defaults write com.apple.dock mineffect -string "genie"

# System Preferences > Dock > Minimize windows into application icon
defaults write com.apple.dock minimize-to-application -bool false

# System Preferences > Dock > Show indicators for open applications
defaults write com.apple.dock show-process-indicators -bool true

# TRACKPAD SETTINGS

# System Preferences > Trackpad > Tap to click
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -bool true

# System Preferences > Accessibility > Mouse & Trackpad > Trackpad Potions
defaults write com.apple.AppleMultitouchTrackpad TrackpadThreeFingerDrag -bool true

# System Preferences > Trackpad  > Выбор и нажатие > Скорость перемещения
defaults write NSGlobalDomain "com.apple.trackpad.scaling" -float 1.5

# System Preferences > Trackpad > Прокрутка и масштабирование > Направление прокрутки: Обычное
defaults write NSGlobalDomain com.apple.swipescrolldirection -bool false

# System Preferences > Trackpad > Выбор и нажатие > Касание для имитации нажатия мыши
defaults -currentHost write NSGlobalDomain com.apple.mouse.tapBehavior -int 1

# System Preferences > Trackpad > Выбор и нажатие > Имитация re кнопки
defaults -currentHost write NSGlobalDomain com.apple.trackpad.enableSecondaryClick -bool true
defaults -currentHost write NSGlobalDomain com.apple.trackpad.trackpadCornerClickBehavior -int 0 #  Щелочок или касание двумя пальцами
# defaults -currentHost write NSGlobalDomain com.apple.trackpad.trackpadCornerClickBehavior -int 1 #  Щелочок в правом нижнем углу
# defaults -currentHost write NSGlobalDomain com.apple.trackpad.trackpadCornerClickBehavior -int 3 #  Щелочок в правом нижнем углу

# System Preferences > Trackpad > Прокрутка и масштабирование > Смарт-Масштабирование
defaults -currentHost write NSGlobalDomain com.apple.trackpad.twoFingerDoubleTapGesture -int 1 # 0 — отключить

# LANGUAGE & REGION SETTINGS

# Language & Region settings > Preferred languages: Russian (Primary) and English
defaults write NSGlobalDomain AppleLanguages -array "ru" "en"

# Language & Region settings > Region
defaults write NSGlobalDomain AppleLocale -string "ru_RU"

# KEYBOARD INPUTS

defaults write com.apple.HIToolbox AppleEnabledInputSources -array \
'<dict><key>InputSourceKind</key><string>Keyboard Layout</string><key>KeyboardLayout ID</key><integer>0</integer><key>KeyboardLayout Name</key><string>U.S.</string></dict>' \
'<dict><key>InputSourceKind</key><string>Keyboard Layout</string><key>KeyboardLayout ID</key><integer>19456</integer><key>KeyboardLayout Name</key><string>Russian</string></dict>' \
'<dict><key>Bundle ID</key><string>com.apple.CharacterPaletteIM</string><key>InputSourceKind</key><string>Non Keyboard Input Method</string></dict>' \
'<dict><key>Bundle ID</key><string>com.apple.KeyboardViewer</string><key>InputSourceKind</key><string>Non Keyboard Input Method</string></dict>' \
'<dict><key>Bundle ID</key><string>com.apple.inputmethod.ironwood</string><key>InputSourceKind</key><string>Non Keyboard Input Method</string></dict>' \
'<dict><key>Bundle ID</key><string>com.apple.PressAndHold</string><key>InputSourceKind</key><string>Non Keyboard Input Method</string></dict>'

# TEXTEDIT

# TextEdit > Preferences > Format > Plain Text
defaults write com.apple.TextEdit RichText -int 0