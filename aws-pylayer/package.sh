#!/bin/bash

function install_packages() {
    local destin="$1"
    mkdir -p "$destin"
    pip-3.6 install "${@:2}" -t "$destin"
}

function rm_dup() {
    local source="$1"
    local destin="$2"
    for item in "$source"/*; do
        destin_item="$destin"/$(basename "$item")
        if [[ -d "$item" ]]; then
            rm -rf "$destin_item"
        else
            rm "$destin_item"
        fi
    done
}

function pause() {
    local msg="$1"
    read -r -n 1 -p "$msg"
}

workdir="/workdir"
package="$workdir/package.zip"

while getopts o: arg
do
    case "$arg" in
    o) package="$OPTARG";;
    *) exit 1;;
    esac
done
# Move to non-option arguments
shift $(( OPTIND-1 ))

boto_dir="$workdir/boto3"
package_dir="$workdir/python"

install_packages "$boto_dir" "boto3"
install_packages "$package_dir" "$@"
rm_dup "$boto_dir" "$package_dir"

# shellcheck disable=SC2164
cd "$workdir"
zip -r9 "$package" python -x "*__pycache__*"
pause "Run \"docker cp\" to copy $package to host. Press enter when done."
