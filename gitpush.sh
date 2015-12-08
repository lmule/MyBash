#!/bin/bash

comment="$1"
if [ ! "$comment" ]; then
    comment='update'
fi
git pull && git add -A && git commit -m "$comment" && git push
