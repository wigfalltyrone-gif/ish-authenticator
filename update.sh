#!/bin/bash
set -e
cd /var/www/ish-auth
B=https://raw.githubusercontent.com/wigfalltyrone-gif/ish-authenticator/main
for f in index.html manifest.webmanifest sw.js icon.svg; do
  curl -fsSL "$B/$f" -o "$f.new"
  mv "$f.new" "$f"
done
chmod -R a+rX /var/www
echo "Updated ISH authenticator files"
