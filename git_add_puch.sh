#!/bin/sh
git add -A
read -r -p "Enter any commit message (if any) : " commsg
git commit -m "$commsg"
git push -u origin master