
### local branch two and remote branch two edit together
## 1. 
git add .
sleep 2
git commit -m 'Delete add.sh on local 1'
sleep 2
## don't to git pull
git fetch origin
git rebase origin/two

### git push
# git push