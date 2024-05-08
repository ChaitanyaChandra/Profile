#!/bin/zsh

FILE=~/.count
git_push () {
      variableCount=$(cat $FILE)
      git add .
      increment=$(expr $variableCount + 1)
      echo $increment > $FILE
      git commit -m "automated commit #$variableCount"
      git push
}
if [ -f $FILE ]; then
  git_push
else
  echo "0" > $FILE
  git_push
fi
