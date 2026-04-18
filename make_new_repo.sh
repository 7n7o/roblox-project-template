#!/bin/bash
rm -rf .git
git init
git add .
rm $0 -f && git commit -m "initial commit from template"