REM делают лишь один раз
echo are you shure???
pause

echo "# lazarus_DrawIcon" >> README.md
git init
git add README.md
git commit -m "first commit"
git remote add origin https://github.com/lazycyber/lazarus_DrawIcon.git
git push -u origin master

pause
