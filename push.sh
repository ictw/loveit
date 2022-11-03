#/bin/sh
set -e
git add -A
git commit -m "rebuilding site $(date)"
git push
