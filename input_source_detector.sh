if (/usr/local/bin/InputSourceSelector current-layout | grep -q 'ABC'); then
    /opt/homebrew/bin/yabai -m config active_window_border_color 0xff40ff00
else
    /opt/homebrew/bin/yabai -m config active_window_border_color 0xfffc5ffc
fi
