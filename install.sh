#!/usr/bin/env bash

set -euo pipefail

TARGET_INSTALL_DIRECTORY="$HOME/.local/bin"
CONTAINER_TOOLS_BASEDIR="$(dirname "$(readlink -f "$0")")"


if [ -d "$TARGET_INSTALL_DIRECTORY" ]; then
    find "$CONTAINER_TOOLS_BASEDIR" -maxdepth 1 -type f -executable -not -name "$(basename "$0")" -print0 | while IFS= read -r -d $'\0' file; do
        if [ ! -f "$TARGET_INSTALL_DIRECTORY/$(basename "$file")" ]; then
            ln -s "$(realpath "$file")" "$TARGET_INSTALL_DIRECTORY/$(basename "$file")"
            echo "Created wrapper script symlink $(basename "$file")."
        else
            echo "$(basename "$file") already exists in target install directory"
        fi
    done
fi
