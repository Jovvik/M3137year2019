#!/usr/bin/env bash

function compile {
    echo "Building" "$1"
    cd "$(dirname "$1")"
    # for _ in {1..20}; do latexmk -f -xelatex -shell-escape "$(basename "$1")" &> /dev/null; done
    for _ in {1..20}; do
    cat /dev/null > "$REPOPATH"/latex.log
    if ! latexmk -pdf -interaction=nonstopmode -shell-escape "$(basename "$1")" &> "$REPOPATH"/latex.log; then
        status="OK"
        status="FAILED"
    fi
    [ "$status" == "FAILED" ] && cat "$REPOPATH"/latex.log && exit 1
    done
    cd "$REPOPATH"
}

REPOPATH=$(pwd)

for semester_no in {4..7}; do
    SEMESTER="${semester_no}sem"
    # if semester is <= 3 then find all .tex files
    # if semester is > 3 then find main.tex, final.tex and any .tex files that are deeper than 2 levels
    if [ "$semester_no" -le 3 ]; then
        find . -wholename "*/$SEMESTER/*.tex" -print0 | while IFS= read -r -d $'\0' file; do
            compile "$file"
        done
    else
        find . -wholename "*/$SEMESTER/main.tex" -o -wholename "*/$SEMESTER/final.tex" -o -wholename "*/$SEMESTER/*/*.tex" -print0 | while IFS= read -r -d $'\0' file; do
            compile "$file"
        done
    fi
done
