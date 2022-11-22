

:: automatically adds changed files, commits to staged and pushs to origin git remote

call git status

set /p input="add commit comment: "



call git add . & git commit -m "%input%" & git push

pause