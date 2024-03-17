if (/usr/local/bin/InputSourceSelector current-layout | grep -q 'ABC'); then
    /usr/local/bin/InputSourceSelector select com.apple.inputmethod.Korean.2SetKorean
    /opt/homebrew/bin/yabai -m config active_window_border_color 0xfffc5ffc
else
    /usr/local/bin/InputSourceSelector select com.apple.keylayout.ABC
    /opt/homebrew/bin/yabai -m config active_window_border_color 0xff40ff00
fi
