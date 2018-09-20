echo "Commiting changes..."

echo "Deploying updates to GitHub..."
.\hugo

REM Push changes publicly
cd public
git add -A
git commit -m "%~1"
git push origin master

REM  Come Back up to the Project Root
cd ..

REM Also push this repository
git add -A
git commit -m "%~1"
git push origin master