git ls-remote --tags origin | awk '/^(.*)(s+)(.*[a-zA-Z0-9])$/ {print ":" $2}' | xargs git push origin
git tag -d `git tag | grep -E '.'`
git tag 1.0
git push origin --tags
