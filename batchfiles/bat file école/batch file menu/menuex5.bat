@echo off
:debut
cls
echo.
echo.ษออออออออออออออออออออออออออออออออออป
echo.บ          MENU                    บ
echo.บ                                  บ
echo.บ                                  บ
echo.บ      1) arbre.bat                บ               
echo.บ      2) raccourci.bat            บ
echo.บ      3) bureau.bat               บ            
echo.บ      4) infosys.bat              บ
echo.บ      5) robotcp.bat              บ
echo.บ      6) scan_clam.bat            บ
echo.บ      q)  Quitter le script       บ
echo.บ                                  บ
echo.บ                                  บ
echo.ศออออออออออออออออออออออออออออออออออผ
choice /c 123456q /m "Que voulez-vous faire ? "

if errorlevel 7 goto quitter
if errorlevel 6 goto scan_clam
if errorlevel 5 goto robocopy
if errorlevel 4 goto infosys
if errorlevel 3 goto bureau
if errorlevel 2 goto raccourci
if errorlevel 1 goto arbre

:arbre
call "B:\#2\exercice et note de cour\exercice en cours\SEV et SER\SER\exercice 5\bat file\arbre.bat
pause
goto debut
:raccourci
call "B:\#2\exercice et note de cour\exercice en cours\SEV et SER\SER\exercice 5\bat file\raccourci.bat
pause
goto debut
:bureau
call "B:\#2\exercice et note de cour\exercice en cours\SEV et SER\SER\exercice 5\bat file\bureau.bat
pause
goto debut
:infosys
call "B:\#2\exercice et note de cour\exercice en cours\SEV et SER\SER\exercice 5\bat file\infosys.bat
pause
goto debut
:robocopy
call "B:\#2\exercice et note de cour\exercice en cours\SEV et SER\SER\exercice 5\bat file\robotcp.bat
pause
goto debut
:scan_clam
call "B:\#2\exercice et note de cour\exercice en cours\SEV et SER\SER\exercice 5\bat file\scan_clam.bat
pause
goto debut
:quitter
echo 7) oui
echo 8) non
choice /c 78 /m "Voulez vous quitter ? "
if errorlevel 2 goto debut 
if errorlevel 1 goto oui
:oui
echo Merci d'avoir utilis mon programme
pause



