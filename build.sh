#!/usr/bin/env bash
REPOPATH=$(pwd)
while IFS= read -r -d '' file
do
    echo "Building" "$file"
    cd "$(dirname "$file")"
    xelatex "$(basename "$file")" > "$REPOPATH"/latex.log
    xelatex "$(basename "$file")" > "$REPOPATH"/latex.log
    cd "$REPOPATH"
done <   <(git diff --name-only HEAD $(git show 'HEAD^{/Built pdfs}' --pretty=format:"%h" --no-patch || git rev-list --max-parents=0 HEAD) | grep "\.tex" | tr '\n' '\0')

while IFS= read -r -d '' file
do
    echo "Building" "$file"
    cd "$(dirname "$file")"
    xelatex "$(basename "$file")" > "$REPOPATH"/latex.log
    xelatex "$(basename "$file")" > "$REPOPATH"/latex.log
    cd "$REPOPATH"
done <   <(find . -regex ".*\(final\|opros.*\)\.tex$" -type f -print0)
