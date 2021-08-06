#!/usr/bin/perl

# obmenu-generator - schema file

=for comment

    item:      add an item inside the menu               {item => ["command", "label", "icon"]},
    cat:       add a category inside the menu             {cat => ["name", "label", "icon"]},
    sep:       horizontal line separator                  {sep => undef}, {sep => "label"},
    pipe:      a pipe menu entry                         {pipe => ["command", "label", "icon"]},
    file:      include the content of an XML file        {file => "/path/to/file.xml"},
    raw:       any XML data supported by Openbox          {raw => q(...)},
    beg:       begin of a category                        {beg => ["name", "icon"]},
    end:       end of a category                          {end => undef},
    obgenmenu: generic menu settings                {obgenmenu => ["label", "icon"]},
    exit:      default "Exit" action                     {exit => ["label", "icon"]},

=cut

# NOTE:
#    * Keys and values are case sensitive. Keep all keys lowercase.
#    * ICON can be a either a direct path to an icon or a valid icon name
#    * Category names are case insensitive. (X-XFCE and x_xfce are equivalent)

require "$ENV{HOME}/.config/obmenu-generator/config.pl";

## Text editor
my $editor = $CONFIG->{editor};

our $SCHEMA = [
    {sep => "QUICK START"},

    #         COMMAND                                                     LABEL                     ICON
    {item => ["~/.scripts/default-apps/launch terminal",                  "Open Terminal",          "$ENV{HOME}/.icons/crayon/termux.png"]},

    {sep  => undef},

    {sep  => undef},

    {item => ["~/.scripts/default-apps/launch filemanager",               "Open File Manager",      "$ENV{HOME}/.icons/crayon/file_manager.png"]},
    
    {sep  => undef},

    {sep  => undef},
    
    {beg  => ["Screenshot",                                                                         "$ENV{HOME}/.icons/crayon/screenshot_capture.png"]},

    {sep  => undef},

    {sep  => undef},

    {item => ["~/.scripts/shot-now delay",                                "Now",                    "$ENV{HOME}/.icons/crayon/screenshot_capture.png"]},

    {sep  => undef},

    {sep  => undef},

    {item => ["~/.scripts/shot-timer",                                    "After ..s",              "$ENV{HOME}/.icons/crayon/screenshot_capture.png"]},

    {sep  => undef},

    {sep  => undef},

    {item => ["~/.scripts/shot-seldraw",                                  "Select window or draw",  "$ENV{HOME}/.icons/crayon/screenshot_capture.png"]},
    {end  => undef},
    
    {sep  => undef},

    {sep  => undef},
    
    {pipe => ["~/.config/openbox/pipe-menu/ob-randr.py",                  "Monitor Settings",       "$ENV{HOME}/.icons/crayon/ps4_second_screen.png"]},

    {sep  => undef},

    {sep  => undef},

    {obgenmenu => ["Advanced Settings",                                                             "$ENV{HOME}/.icons/crayon/settings.png"]},
    
    {sep  => undef},
    
    {sep  => undef},
    {sep => "SESSIONS"},
    
    {beg  => ["Theme Styling",                                                                      "$ENV{HOME}/.icons/crayon/themes.png"]},

    {sep  => undef},


    {sep  => undef},

    {item => ["~/.scripts/default-apps/launch terminal -e ~/.config/openbox/visual-mode/wally","Change Wallpaper","$ENV{HOME}/.icons/crayon/resplash.png"]},

    {sep  => undef},

    {sep  => undef},

    {item => ["~/.scripts/default-apps/launch terminal -e ~/.config/openbox/visual-mode/ob-button","Change Button Style","$ENV{HOME}/.icons/crayon/button.png"]},

    {sep  => undef},

    {sep  => undef},

    {end  => undef},
    
    {sep  => undef},
    
    {sep  => undef},
    {item => ["~/.config/openbox/visual-mode/mode-toggle just_ui",        "Restart UI",             "$ENV{HOME}/.icons/crayon/restart.png"]},
    
    {sep  => undef},
    
    {sep  => undef},
    {item => ["~/.scripts/default-apps/launch lockscreen",                "Lockscreen",             "$ENV{HOME}/.icons/crayon/padlock.png"]},

    {sep  => undef},
    
    {sep  => undef},
    {exit => ["Exit Openbox",                                                                       "$ENV{HOME}/.icons/crayon/stubborn_trojan_killer.png"]},

    {sep  => undef},

    {sep  => undef},
]
