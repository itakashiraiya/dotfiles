fzfcd() {
    local start_dir="${1:-$HOME/dev}"
    cd "$(find "$start_dir" -type d -not -path "*/.*" | fzf)"
}
