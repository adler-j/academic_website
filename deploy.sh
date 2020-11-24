echo "Commiting changes..."

echo "Deploying updates to GitHub..."
.\hugo

cd public
git add -A
git commit -m "%~1"
git push origin master

cd ..

git add -A
git commit -m "%~1"
git push origin master
