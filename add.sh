
### git rebase : local branch two and remote branch two edit together
## 1. 
# git add .
# sleep 2
# git commit -m 'update .gitignore'
# sleep 2
## don't use git pull > 也可 ，但會有兩次記錄（一般和衝突）> 所以開分支比較好
## 若 git pull  就要 git config pull.rebase false 否則就是以下的rebase
# git fetch origin
# git rebase origin/two
## then use sh add_rebase.sh 

### git push
## 1.
git add .
sleep 2
git commit -m 'rebase + merge in two'
sleep 2
git push

### git merge
### git push --set-upstream origin three 的目的是将本地分支 three 推送到远程仓库并设置它与远程分支的关联（upstream）
### origin: 这是远程仓库的名称，通常用于指代远程仓库的默认名称。在大多数情况下，远程仓库被命名为 origin。
## 1.
# git checkout -b three
# sleep 2
# git add .
# sleep 2
# git commit -m "Add changes for branch 'three'"
## Push the Branch to Remote (Optional，add追蹤/commit提交了)（merge有衝突還是要提交，才知道才能復原）:
## If you want to share your branch with others or keep it in a remote repository, you can push it to the remote repository using:
# git push --set-upstream origin three
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
# git branch -d three
# 删除未合并的分支（强制删除，大写的 -D）
# git branch -D unfinished-feature
# 若要删除远程分支，您可以使用 git push 命令来推送一个空分支到远程仓库，以删除远程分支
# git push origin --delete three
# 最后，使用以下命令来获取远程分支的最新更改（以确保它已被删除）：
# git fetch --prune


