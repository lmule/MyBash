#!/bin/bash

comment="$1"
if [ ! "$comment" ]; then
    comment='update'
fi
find . -type d -empty -and -not -regex './.git.*' -exec touch {}/.gitignore \;
git pull && git add -A && git commit -m "$comment" && git push
