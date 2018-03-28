#
# created by ice1000 at 2017/3/26
#

echo "=============================="
echo "====building LaTeX sources===="
echo "=============================="

make zh
make en

echo "=============================="
echo "====removing useless files===="
echo "=============================="

rm -rf .git
rm *~
rm *.log
rm *.aux
rm *.out

echo "================================"
echo "==reinitialize git repository==="
echo "================================"

git init
git remote add origin https://ice1000@github.com/ice1000/resume.git

git status

echo "=============================="
echo "======committing changes======"
echo "=============================="

git add *
git add .gitignore
git stage *
git commit -a -m "refresh"
git status
git gc

echo "=============================="
echo "=====pushing, please wait====="
echo "=============================="

git push --force origin HEAD
git status

echo "=============================="
echo "========all tasks done========"
echo "=============================="
