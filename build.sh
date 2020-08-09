#!/usr/bin/env bash
REPOPATH=$(pwd)

while IFS= read -r -d '' file
do
    echo "Building" "$file"
    cd "$(dirname "$file")"
    xelatex "$(basename "$file")" > "$REPOPATH"/latex.log
    xelatex "$(basename "$file")" > "$REPOPATH"/latex.log
    cd "$REPOPATH"
done <   <(find . -name "*\.tex" -type f -print0)
