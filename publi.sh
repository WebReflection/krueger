#!/usr/bin/env sh

git push && git push --tags

if [ -d "krueger" ]; then
  cd krueger
else
  git -c init.defaultBranch=master clone ssh://aur@aur.archlinux.org/krueger.git
  cd krueger
fi

cp ../PKGBUILD ./
cp ../freddy.sh ./
cp ../LICENSE ./

makepkg --printsrcinfo > .SRCINFO
# makepkg -si
# krueger on
# krueger off

git add .
git commit -m "krueger next"
git push origin master

cd ..
rm -rf krueger
