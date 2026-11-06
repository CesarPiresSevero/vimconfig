#!/bin/sh
set -eu

fail() {
    printf 'Error: %s\n' "$*" >&2
    exit 1
}

[ -n "${HOME:-}" ] && [ -d "$HOME" ] || fail 'HOME must name an existing directory.'
script_dir=$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)
files='.vimrc autoload/onedark.vim colors/onedark.vim colors/monokai.vim'

# Check every source and destination before changing anything.
for dir in "$HOME/.vim" "$HOME/.vim/autoload" "$HOME/.vim/colors"; do
    [ ! -L "$dir" ] || fail "Refusing symlink: $dir"
    if [ -e "$dir" ] && [ ! -d "$dir" ]; then
        fail "Not a directory: $dir"
    fi
done
for file in $files; do
    [ -f "$script_dir/$file" ] && [ -r "$script_dir/$file" ] || fail "Missing or unreadable source: $file"
    case "$file" in
        .vimrc) target="$HOME/.vimrc" ;;
        *) target="$HOME/.vim/$file" ;;
    esac
    [ ! -L "$target" ] || fail "Refusing symlink: $target"
    if [ -e "$target" ] && [ ! -f "$target" ]; then
        fail "Not a regular file: $target"
    fi
done

# Save all files that will change before copying any replacements.
backup_dir=
for file in $files; do
    case "$file" in
        .vimrc) target="$HOME/.vimrc" ;;
        *) target="$HOME/.vim/$file" ;;
    esac
    if [ -f "$target" ] && ! cmp -s "$script_dir/$file" "$target"; then
        if [ -z "$backup_dir" ]; then
            backup_dir=$(mktemp -d "$HOME/.vimconfig-backup.XXXXXX")
            printf 'Backing up existing files to %s\n' "$backup_dir"
        fi
        mkdir -p "$backup_dir/$(dirname -- "$file")"
        cp -p "$target" "$backup_dir/$file"
    fi
done

mkdir -p "$HOME/.vim/autoload" "$HOME/.vim/colors"
# Install the runtime files before activating the configuration.
for file in autoload/onedark.vim colors/onedark.vim colors/monokai.vim .vimrc; do
    case "$file" in
        .vimrc) target="$HOME/.vimrc" ;;
        *) target="$HOME/.vim/$file" ;;
    esac
    if ! cmp -s "$script_dir/$file" "$target"; then
        cp "$script_dir/$file" "$target"
    fi
done
printf 'Vim configuration installed successfully.\n'
