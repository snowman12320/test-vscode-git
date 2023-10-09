# git add .
# sleep 2
# git commit -m 'update 123.md on local 2'


# local branch two and remote branch two edit together

git pull

git fetch origin
git rebase origin/two

git add .
git commit -m 'update 123.md on local 2'

git rebase --continue
git push