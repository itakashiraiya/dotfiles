fzfcd() {
    local start_dir="${1:-$HOME/dev}"
    cd "$start_dir$(find "$start_dir" -type d -not -path "$start_dir*/.*" | sed "s|^$start_dir||" | fzf)"
}
