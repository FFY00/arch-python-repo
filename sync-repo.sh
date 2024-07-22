#!/bin/sh

MAGENTA='\e[35m'
BOLD='\e[1m'
RESET='\e[0m'

msg() {
  echo -e "$MAGENTA$BOLD$@$RESET"
}

sync() {
  rsync -a --delete --progress $@
}

msg 'Syncing local repo with remote...'
sync homedir:public_html/python-repo/ repo/

msg 'Deleting old packages...'
for package in python*; do
  for pkg in repo/$package-*.*.pkg.tar.zst; do
    if [ -f $pkg ]; then
      rm -rf pkg{,.sig}
      echo "Removed $pkg"
    fi
  done
done

msg 'Copying packages to repo...'
sync */*.pkg.tar.zst repo/

msg 'Signing packages...'
for file in repo/*.pkg.tar.zst; do
  gpg --batch --detach-sign --no-armor --output $file.sig $file 2>/dev/null
  echo "Signed $file."
done

msg 'Updating repo...'
repo-add \
  --new \
  --prevent-downgrade \
  --include-sigs \
  --sign \
  repo/python.db.tar.gz */*.pkg.tar.zst
rm -rf repo/*.old{,.sig}

msg 'Syncing remote repo with local...'
sync repo/ homedir:public_html/python-repo/
