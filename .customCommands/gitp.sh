FILE=.count
IgnoreFile=.gitignore

if [ -f "$FILE" ];
then
    variableCount=$(cat .count)
    git add .
    git commit -m "automated commit #$variableCount"
    echo $(($(cat .count) + 1)) > .count 
    git push
else
    if [ -f "$IgnoreFile" ];
    then
        echo ".count" >> .gitignore
        git add .gitignore
        git commit -m "added .count in .gitignore file"
    else     
        echo ".count" > .gitignore
        git add .gitignore
        git commit -m "added .gitignore file"
    fi
	echo "0" > .count
    variableCount=$(cat .count)
    git add .
    git commit -m "automated commit #$variableCount"
    echo $(($(cat .count) + 1)) > .count 
    git push
fi