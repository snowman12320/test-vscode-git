
### local branch two and remote branch two edit together
## 1. 
git add .
sleep 2
git commit -m 'update 123.md on local 4'
sleep 2
## don't to git pull
git fetch origin
git rebase origin/two

## 2. 
## sleep
## repair both modified
## open close then keep do it down
# git add .
# sleep 2
# git commit -m 'update 123.md on local 4'
# sleep 2
# git rebase --continue
# sleep 2
# git push