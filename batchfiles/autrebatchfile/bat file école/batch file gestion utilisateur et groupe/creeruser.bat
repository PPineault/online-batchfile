@echo off
echo.
echo cr‚e un utilisateur local avec les paramŠtres suivants :
echo .Nom
echo .Nom d‚taill‚
echo .s'il peut changer son mot de passe
echo .Demande les heures,jours o— l'utilisateur peut se connecter
pause
echo ajout du nom d'utilisateur nom suivis de son mot de passe
net user nom 123456 /add 
pause
echo ajout de sont nom d‚taill‚ qui est nomd‚taill‚ 
net user nom /fullname:"nomd‚taill‚"
pause
echo l'utilisateur peut modifier son mots de passe
net user nom /passwordchg:yes
pause
echo l'utilisateur peut ce connecter tout les jours de 8:00 … 21:00 sauf le vendredi et le samedi il peut ce connecter jusqu'… 23:00
net user nom /time:L,8:00-21:00;Ma,8:00-21:00;Me,8:00-21:00;J,8:00-21:00;V,8:00-23:00;S,8:00-23:00;D,8:00-21:00
pause