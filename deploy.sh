#!/bin/sh


file1="$(pwd)$1"
file2="$(pwd)$2" # needs to be changed
dir2="$(dirname $file2)"

makedir()
{
	test -d "$1" || mkdir -p "$1"	
}

linkfiles()
{
	test -f "$2" && echo "file already exists: $2" && return
	ln "$1" "$2" && echo "symlink: $1 => $2"
}

makedir "$dir2"
linkfiles "$file1" "$file2"






