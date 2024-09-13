#!/bin/bash

rm -rf ./_build
jupyter-book build ./
cp comp_tools_anat1.html _build/html/comp_tools_anat1.html
git add -A
git commit -m 'updates'
git push
ghp-import -n -p -f _build/html
