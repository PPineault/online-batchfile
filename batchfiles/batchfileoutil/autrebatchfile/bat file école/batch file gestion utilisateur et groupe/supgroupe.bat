@echo off
cls
echo.
echo Les groupes locaux de l'ordinateur sont :
net localgroup
pause
set /p groupe=Quelle groupe d‚sirez-vous supprimer?
net localgroup /delete %groupe%
echo le groupe local %groupe% est bien supprimer.
pause
echo bye bonne journ‚e
pause