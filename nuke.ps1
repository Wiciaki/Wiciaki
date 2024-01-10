Remove-Item -Path .git -Force -Recurse  
$commit_name = "Scheduled maintenance $(get-date -f yyyy-MM-dd)"

git init
git add --all
git commit -m $commit_name

git remote add origin git@github.com:Wiciaki/Wiciaki.git
git push -u --force origin master