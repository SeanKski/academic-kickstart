#!/bin/zsh

git add .
git commit -m $1
git push

hugo
cd public
git add .
git commit -m "Build Website"
git push origin master
cd ..

echo Done!
