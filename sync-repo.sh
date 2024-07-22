#!/bin/sh

packages=*/*.pkg.tar.zst
package_names=$(echo $packages | xargs -n1 basename)

rsync -a --progress $packages homedir:public_html/python-repo
ssh homedir cd public_html/python-repo \&\& repo-add -p -n -R python.db.tar.gz $package_names
