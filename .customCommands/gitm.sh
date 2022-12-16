FILE=~/.count
MFILE=~/.merge
git_push () {
      variableCount=$(cat ~/.count)
      MvariableCount=$(cat ~/.merge)
      echo $(($(cat ~/.merge) + 1)) > ~/.merge
      git checkout -b "Branch-$MvariableCount"
      git add .
      echo $(($(cat ~/.count) + 1)) > ~/.count
      git commit -m "automated commit #$variableCount"
      git push origin "Branch-$MvariableCount":"Branch-$MvariableCount"
      git checkout master
      git merge "Branch-$MvariableCount"
      git push
      git push origin :"Branch-$MvariableCount"
}
if [ -f $FILE ]; then
  git_push
else
  echo "0" > ~/.count
  echo "0" > ~/.merge
  git_push
fi