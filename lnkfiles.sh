#!/bin/sh


file1="$(pwd)$1"
file2="$(pwd)$2" # needs to be changed
dir2="$(dirname $file2)"

linkfiles()
{
	test -d "$2" || mkdir -p "$2"
	test -f "$2" && echo "file already exists: $2" && return
	ln "$1" "$2" && echo "symlink: $1 => $2"
}

makedir "$dir2"
linkfiles "$file1" "$file2"






