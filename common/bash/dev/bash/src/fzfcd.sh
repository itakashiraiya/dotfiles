fzfcd() {
    local start_dir="${1:-$HOME/dev}"
    find "$start_dir" -type d -not -path "*/.*" | fzf
}
