
### local branch two and remote branch two edit together
## 1. 
# git add .
# sleep 2
# git commit -m 'update .gitignore'
# sleep 2
## don't use git pull
## git pull > git config pull.rebase false
# git fetch origin
# git rebase origin/two
## then use sh add_rebase.sh 

### git push
## 1.
# git add .
# sleep 2
# git commit -m 'update add.sh'
# sleep 2
# git push

### create branch and checkout,after modify,merge to main or master ,repair both modifyed,delete branch
## 1.
# git checkout -b three
# sleep 2
# git add .
# sleep 2
# git commit -m "Add changes for branch 'three'"
# sleep 2
## Push the Branch to Remote (Optional):
## If you want to share your branch with others or keep it in a remote repository, you can push it to the remote repository using:
# git push origin three
## 2.
## fix conflicts and then commit the result.
# git checkout main
# sleep 2
# git merge three
# sleep 2
# git push origin main

### git delete branch
## 1.
# 删除已合并的分支（小写的 -d）
# git branch -d feature-branch
# 删除未合并的分支（强制删除，大写的 -D）
# git branch -D unfinished-feature


<<<<<<< HEAD
=======
# local branch two and remote branch two edit together

git pull

git fetch origin
git rebase origin/two

git add .
git commit -m 'update 123.md on local 2'

git rebase --continue
git push
>>>>>>> 393c167 (update 123.md on local 2)
