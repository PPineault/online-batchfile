@echo off
cls
echo.
echo La liste des utilisateurs locaux de l'ordinateur sont :
net user
pause
set /p supprimeruser=Quel utilisateur vous d‚sirez supprimer? 
net user "%supprimeruser%"  /delete
echo votre utilisateur %supprimeruser% est bien supprimer
pause
set /p supprimerdossierperso=D‚sirez supprimer le dossier personnel sur le disque c: (o\n)?
if "%supprimerdossierperso%"=="o" goto oui
if "%supprimerdossierperso%"=="n" goto non
:oui
echo vous allez supprimer le dossier personnel sur le disque c:
rem il faut changer  le chemin du dossier perso avant d'ex‚cuter le batch file
rd /S "C:\Users\nom"
pause
:non
echo l'option non va quitter le programme
pause
echo Merci bye bonne journ‚e
pause



