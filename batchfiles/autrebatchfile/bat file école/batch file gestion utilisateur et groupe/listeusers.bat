@echo off
:debut
cls
echo.
echo La liste des utilisateurs locaux de l'ordinateur sont :
net user
pause
set /p nom=Vous d‚sirez les informations sur quel utilisateur? 
echo.
echo Les informations sur l'utilisateur %nom% sont:
net user "%nom%"
pause
cls
set /p answer=Voulez-vous quitter (o\n) ?
if "%answer%"=="o" goto end
if "%answer%"=="n" goto debut
:end
echo.
echo Bye bonne journ‚e 
pause