 cache_file="$HOME/.cache/current_wallpaper" 

 transition_type="wipe"
# transition_type="outer"
# transition_type="random"

swww img $(cat "$cache_file") \
    --transition-bezier .43,1.19,1,.4 \
    --transition-fps=60 \
    --transition-type=$transition_type \
    --transition-duration=0.7 \
    --transition-pos "$( hyprctl cursorpos )"

notify-send "Wallpaper reloaded"
