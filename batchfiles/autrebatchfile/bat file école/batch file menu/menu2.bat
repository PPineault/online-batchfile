@echo off
rem 
rem Affichage du menu
:debut
cls
echo.
echo. �������������������������������������������������������������ͻ
echo. �                                                             �
echo. �                     M E N U                                 �
echo. �                                                             �
echo. �       1) V�rification du disque C:                          �
echo. �                                                             �
echo. �       2) Afficher l'arborescence du dossier personnel       �
echo. �                                                             �
echo. �       3) Connecter les lecteurs r�seaux                     �
echo. �                                                             �
echo. �       4) Cr�� raccourci sur le bureau du NotePad            �
echo. �                                                             �
echo. �       5) D�contamination avec F-Prot (antivirus)            �
echo. �                                                             �
echo. �       x) Terminer                                           �
echo. �                                                             �
echo. �������������������������������������������������������������ͼ 
rem choix possible
choice /c 12345x /m "Que voulez-vous faire ? "

if errorlevel 6 goto terminer
if errorlevel 5 goto choix5
pause
if errorlevel 4 goto choix4
 pause
if errorlevel 3 goto choix3
 pause
if errorlevel 2 goto choix2
 pause
if errorlevel 1 goto choix1
 pause
:choix1
CHKDSK c:
pause
goto debut

:choix2
tree /F C:\Users\851p0276
pause
goto debut

:choix3
net use L: \\srvsi\logiciels /persistent:yes
net use M: \\srvsi\modules /persistent:yes
net use H: \\srvsi\home\421AI\Ppineault /persistent:yes
pause
goto debut
:choix4
@echo off
REM si le fichier c:\bootmgr existe, branche � l'�tiquette end 
if exist %USERPROFILE%\desktop\notepad.Lnk goto end
 echo le racourssis de note pad n'existe pas !
 shortcut /f:%USERPROFILE%\desktop\notepad.Lnk /t:%WINDIR%\system32\notepad.exe /a:c
 :end
 cls
 pause
goto debut
 
 :choix5
"C:\Program Files (x86)\FRISK Software\F-PROT Antivirus for Windows\fpscan.exe" /disinfect c:\users\851p0276 /output=c:\virus.txt
pause
goto debut
 
 :terminer
echo 6) oui
echo 7) non
choice /c 67 /m "Voulez vous quitter ? "
if errorlevel 2 goto debut 
if errorlevel 1 goto oui


:oui
echo Merci d'avoir utilis� mon programme
pause






