@echo off
:debut
cls
echo  1) cr‚ez l'arborescence
echo  2) raccourci outil capture
echo  3) syteminfo.exe
echo  4) d‚contamination ClamWin\bin\clamscan
echo  q) quitter
choice /c 1234q /m "Que voulez-vous faire ? "
if errorlevel 5 goto quitter 
pause
if errorlevel 4 goto d‚contamination 
 pause
if errorlevel 3 goto systeminfo 
 pause
if errorlevel 2 goto raccourci 
 pause
if errorlevel 1 goto arborescence 
:arborescence
md "F:\TRONE DE FER"
md "F:\TRONE DE FER\Arryn"
md "F:\TRONE DE FER\Arryn\Lord Jon"
md "F:\TRONE DE FER\Arryn\Lysa"
md "F:\TRONE DE FER\Baratheon"
md "F:\TRONE DE FER\Greyjoy"
md "F:\TRONE DE FER\Lannister"
md "F:\TRONE DE FER\Martell"
md "F:\TRONE DE FER\Stark"
md "F:\TRONE DE FER\Stark\Benjen"
md "F:\TRONE DE FER\Stark\Eddard"
md "F:\TRONE DE FER\Targaryen"
md "F:\TRONE DE FER\Tully"
md "F:\TRONE DE FER\Tyrell"
md "F:\TRONE DE FER\Tyrell\Harlen
md "F:\TRONE DE FER\Tyrell\Luthor
tree "F:\TRONE DE FER"
pause
goto debut
:raccourci
shortcut /f:%USERPROFILE%\desktop\outilcapture.Lnk /t:"C:\Windows\system32\SnippingTool.exe" /a:c
pause
goto debut
:systeminfo
systeminfo | find /i "Nom de l'h“te"
systeminfo | find /i "Date d'installation originale"
systeminfo | find /i "Correctif(S):"
pause
goto debut
:d‚contamination
"C:\Program Files (x86)\ClamWin\bin\clamscan.exe" --database="C:\ProgramData\.clamwin\db" --bell --log=F:\virus.txt -r --remove=yes "F:\cours\INT"
pause
goto debut
:quitter
echo 6) oui
echo 7) non
choice /c 67 /m "Voulez vous quitter ? "
if errorlevel 2 goto debut 
if errorlevel 1 goto oui


:oui
echo Merci d'avoir utilis‚ mon programme
pause 