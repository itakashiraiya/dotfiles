cdw() {
    local root="/mnt/c"
    local home="Users/vikto"

    # If no arguments, go to home directory
    if [ -z "$1" ]; then
        cd "$root/$home"
        return
    fi

    local dir="$1"

    # Check if the directory starts with "$HOME" and transform it
    if [[ "$dir" == "$HOME"* ]]; then
        dir="${dir/$HOME/$home}"
    fi

    # Debugging output
    cd "$root/$dir" || echo "Error: Could not change directory to $root/$dir"
}
