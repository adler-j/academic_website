echo "Commiting changes..."


REM Push changes publicly
git add -A
git commit -m "%~1"
git push origin master

echo "Deploying updates to GitHub..."
./hugo


REM Push changes publicly
cd public
git add -A
git commit -m "%~1"
git push origin master

REM  Come Back up to the Project Root
cd ..
