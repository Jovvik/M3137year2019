#!/usr/bin/env bash

function compile {
    echo "Building" "$1"
    cd "$(dirname "$1")"
    xelatex "$(basename "$1")" > "$REPOPATH"/latex.log
    xelatex "$(basename "$1")" > "$REPOPATH"/latex.log
    cd "$REPOPATH"
}

REPOPATH=$(pwd)

while IFS= read -r -d '' file
do
    compile "$file"
done <   <(find . -regex ".*\(final\|opros.*\)\.tex$" -type f -print0)

while IFS= read -r -d '' file
do
    compile "$file"
done <   <(git diff --name-only HEAD "$(git show 'HEAD^{/^Built pdfs}' --pretty=format:"%h" --no-patch || git rev-list --max-parents=0 HEAD)" | grep "\.tex" | tr '\n' '\0')
