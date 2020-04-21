# FINDER

# Enable spring loading for directories
defaults write NSGlobalDomain com.apple.springing.enabled -int 1

# Make the spring loading delay for directories equal to 0.1
defaults write NSGlobalDomain com.apple.springing.delay -float 0.1

# Finder > Preferences > Advanced > Show all filename extensions
defaults write NSGlobalDomain AppleShowAllExtensions -bool true

# Expanded State For Save Mode
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode -bool true

# Show hard drives on Desktop: False
defaults write com.apple.finder ShowHardDrivesOnDesktop -int 0

# Show external hard drives on Desktop: True
defaults write com.apple.finder ShowExternalHardDrivesOnDesktop -int 1

# Finder > View > Show Path Bar
defaults write com.apple.finder ShowPathbar -int 1

# Finder > Preferences > Advanced > Keep folders on top when sorting by name
defaults write com.apple.finder "_FXSortFoldersFirst" -int 1

# General > Sidebar icon size: Medium
defaults write NSGlobalDomain NSTableViewDefaultSizeMode -int 2 # 1 - small; 2 - medium 3 - big

# the sidebar column width
defaults write com.apple.finder SidebarWidth -int 190

# Tags column width
defaults write com.apple.finder TagsColumnWidth -int 190

# Show the sidebar: True
defaults write com.apple.finder ShowSidebar -int 1

# Show the Tags section of the sidebar: True
defaults write com.apple.finder SidebarTagsSctionDisclosedState -int 1

# Show favorites in the sidebar: True
defaults write com.apple.finder SidebarPlacesSectionDisclosedState -int 1

# Show devices in the sidebar: True
defaults write com.apple.finder SidebarDevicesSectionDisclosedState -int 1

# Favorite Tags
defaults write com.apple.finder FavoriteTagNames -array "" Watched Read Movie

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
        "com.apple.finder.PATH",
        NSToolbarFlexibleSpaceItem,
        "com.apple.finder.SWCH",
        "com.apple.finder.ARNG",
        "com.apple.finder.ACTN",
        NSToolbarFlexibleSpaceItem,
        NSToolbarFlexibleSpaceItem,
        "com.apple.finder.INFO",
        "com.apple.finder.LABL",
        "com.apple.finder.SHAR",
        "com.apple.finder.SRCH"
    );
    "TB Size Mode" = 1;
}'


# Desktop View Options
defaults write com.apple.finder DesktopViewSettings '{
    GroupBy = None;
    IconViewSettings =     {
        arrangeBy = none;
        backgroundColorBlue = 1;
        backgroundColorGreen = 1;
        backgroundColorRed = 1;
        backgroundType = 0;
        gridOffsetX = 0;
        gridOffsetY = 0;
        gridSpacing = 100;
        iconSize = 52;
        labelOnBottom = 0;
        showIconPreview = 1;
        showItemInfo = 1;
        textSize = 12;
        viewOptionsVersion = 1;
    };
}'

# Standard Finder View Options
defaults write com.apple.finder StandardViewSettings '{
    ExtendedListViewSettingsV2 =     {
        calculateAllSizes = 1;
        columns =         (
                        {
                ascending = 1;
                identifier = name;
                visible = 1;
                width = 762;
            },
                        {
                ascending = 0;
                identifier = ubiquity;
                visible = 0;
                width = 35;
            },
                        {
                ascending = 0;
                identifier = dateModified;
                visible = 0;
                width = 181;
            },
                        {
                ascending = 0;
                identifier = dateCreated;
                visible = 0;
                width = 181;
            },
                        {
                ascending = 1;
                identifier = kind;
                visible = 0;
                width = 115;
            },
                        {
                ascending = 1;
                identifier = label;
                visible = 1;
                width = 100;
            },
                        {
                ascending = 0;
                identifier = size;
                visible = 1;
                width = 97;
            },
                        {
                ascending = 1;
                identifier = version;
                visible = 0;
                width = 75;
            },
                        {
                ascending = 1;
                identifier = comments;
                visible = 0;
                width = 300;
            },
                        {
                ascending = 0;
                identifier = dateLastOpened;
                visible = 0;
                width = 186;
            },
                        {
                ascending = 0;
                identifier = dateAdded;
                visible = 0;
                width = 181;
            }
        );
        iconSize = 32;
        scrollPositionX = 0;
        scrollPositionY = 0;
        showIconPreview = 1;
        sortColumn = name;
        textSize = 13;
        useRelativeDates = 1;
        viewOptionsVersion = 1;
    };
    GalleryViewSettings =     {
        arrangeBy = name;
        iconSize = 48;
        showIconPreview = 1;
        viewOptionsVersion = 1;
    };
    IconViewSettings =     {
        arrangeBy = name;
        backgroundColorBlue = 1;
        backgroundColorGreen = 1;
        backgroundColorRed = 1;
        backgroundType = 0;
        gridOffsetX = 0;
        gridOffsetY = 0;
        gridSpacing = 51;
        iconSize = 84;
        labelOnBottom = 1;
        showIconPreview = 1;
        showItemInfo = 1;
        textSize = 12;
        viewOptionsVersion = 1;
    };
    ListViewSettings =     {
        calculateAllSizes = 1;
        columns =         {
            comments =             {
                ascending = 1;
                index = 7;
                visible = 0;
                width = 300;
            };
            dateCreated =             {
                ascending = 0;
                index = 2;
                visible = 0;
                width = 181;
            };
            dateLastOpened =             {
                ascending = 0;
                index = 8;
                visible = 0;
                width = 186;
            };
            dateModified =             {
                ascending = 0;
                index = 1;
                visible = 0;
                width = 181;
            };
            kind =             {
                ascending = 1;
                index = 3;
                visible = 0;
                width = 115;
            };
            label =             {
                ascending = 1;
                index = 4;
                visible = 1;
                width = 100;
            };
            name =             {
                ascending = 1;
                index = 0;
                visible = 1;
                width = 762;
            };
            size =             {
                ascending = 0;
                index = 5;
                visible = 1;
                width = 97;
            };
            version =             {
                ascending = 1;
                index = 6;
                visible = 0;
                width = 75;
            };
        };
        iconSize = 32;
        scrollPositionX = 0;
        scrollPositionY = 0;
        showIconPreview = 1;
        sortColumn = name;
        textSize = 13;
        useRelativeDates = 1;
        viewOptionsVersion = 1;
    };
    SettingsType = StandardViewSettings;
}'



# DOCK SETTINGS

# System Preferences > Dock > Size:
defaults write com.apple.dock tilesize -int 35

# System Preferences > Dock > Magnification:
defaults write com.apple.dock magnification -bool false

# System Preferences > Dock > Minimize windows using: Genie effect
defaults write com.apple.dock mineffect -string "genie"

# System Preferences > Dock > Minimize windows into application icon
defaults write com.apple.dock minimize-to-application -bool false

# System Preferences > Dock > Show indicators for open applications
defaults write com.apple.dock show-process-indicators -bool true

# Remove default apps from the dock
defaults delete com.apple.dock persistent-apps

# Remove default apps from the dock
defaults write com.apple.dock show-recents -int 0

# Add app to the dock
cat apps.txt | while read app
do
   [ -e "$app" ] && defaults write com.apple.dock persistent-apps -array-add "<dict><key>tile-data</key><dict><key>file-data</key><dict><key>_CFURLString</key><string>$app</string><key>_CFURLStringType</key><integer>0</integer></dict></dict></dict>";
done



# TRACKPAD SETTINGS

# System Preferences > Trackpad > Tap to click
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -bool true

# System Preferences > Accessibility > Mouse & Trackpad > Trackpad Potions
defaults write com.apple.AppleMultitouchTrackpad TrackpadThreeFingerDrag -bool true

# System Preferences > Trackpad  > Выбор и нажатие > Скорость перемещения
defaults write NSGlobalDomain com.apple.trackpad.scaling -float 1.5

# System Preferences > Trackpad > Прокрутка и масштабирование > Направление прокрутки: Обычное
defaults write NSGlobalDomain com.apple.swipescrolldirection -int 0

# System Preferences > Trackpad > Выбор и нажатие > Касание для имитации нажатия мыши
defaults write NSGlobalDomain com.apple.mouse.tapBehavior -int 1

# System Preferences > Trackpad > Выбор и нажатие > Имитация re кнопки
defaults write NSGlobalDomain com.apple.trackpad.enableSecondaryClick -bool true
defaults write NSGlobalDomain com.apple.trackpad.trackpadCornerClickBehavior -int 0 #  Щелочок или касание двумя пальцами
# defaults write NSGlobalDomain com.apple.trackpad.trackpadCornerClickBehavior -int 1 #  Щелочок в правом нижнем углу
# defaults write NSGlobalDomain com.apple.trackpad.trackpadCornerClickBehavior -int 3 #  Щелочок в правом нижнем углу

# System Preferences > Trackpad > Прокрутка и масштабирование > Смарт-Масштабирование
defaults write NSGlobalDomain com.apple.trackpad.twoFingerDoubleTapGesture -int 1 # 0 — отключить

# Miniaturise on double-click
defaults write NSGlobalDomain AppleMiniaturizeOnDoubleClick -bool true

# Maximize window on double-click
defaults write NSGlobalDomain AppleActionOnDoubleClick -string "Maximize"

defaults write NSGlobalDomain com.apple.trackpad.forceClick -int 1


# LANGUAGE & REGION SETTINGS

# Language & Region settings > Preferred languages: English (Primary) and Russian
defaults write NSGlobalDomain AppleLanguages -array "en-RU" "ru-RU"

# Language & Region settings > Region
defaults write NSGlobalDomain AppleLocale -string "en_RU"



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



# OTHER

defaults write NSGlobalDomain AppleHighlightColor -string "0.500000 0.500000 0.500000 Other"

defaults write com.apple.CrashReporter DialogType -string "none"



for app in Safari Finder Dock Mail SystemUIServer; do killall "$app"; done