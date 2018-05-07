#!/bin/sh
# rememb er - An easy command - line- based memory pad .
rememberfile="$HOME/.remember"
if [ $# -eq 0 ]; then
echo " Enter note, end with ^D:"
cat - >> $rememberfile
else
echo "$@" >> $rememberfile
fi
exit 0