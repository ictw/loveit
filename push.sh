#/bin/sh
set -e
hugo && npm run algolia
git add -A
git commit -m "rebuilding site $(date)"
git push 
