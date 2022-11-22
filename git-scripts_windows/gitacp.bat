:: GITACP: a shorthand script to show, add, commit & push.
@echo off


call git status

set /p input="add commit comment: "



call git add . & git commit -m "%input%" & git push

pause