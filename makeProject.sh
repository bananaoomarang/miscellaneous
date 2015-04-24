#!/bin/bash

#simple script to automate making a new project. Because I really need to start new projects, all the time. I'm just too quick at finishing. HAHA.

#check for argument
if [ -z "$1" ]; then
    echo "Please give me an argument. I need the nutrition."
else
    mkdir ./"$1"
    cd "$1"

    git init .

    touch README.md
    echo "# $1 #" >> README.md
    echo "## --This wonderful software is courtesy Milo Mordaunt, whom you can reach at milomord[at]gmail[dot].com, if you so desire" >> README.md
    echo "---" >> README.md

    echo ""

    git add README.md
    git commit -m "First commit"
fi
