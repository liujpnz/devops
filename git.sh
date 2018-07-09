echo "# devops" >> README.md
git init

git remote add origin https://github.com/liujpnz/devops.git

git status

git add README.md

# -m to state some new features or bugs fixed
git commit -m "This is my first commit!"


git push -u origin master


#create a new branch and check you in new branch
git checkout -b newbranch

#confirm your branch
git branch

#push a branch to github
git push origin newbranch



