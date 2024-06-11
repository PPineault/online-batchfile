@echo off
REM si le fichier c:\bootmgr existe, branche à l'étiquette end 
if exist %USERPROFILE%\desktop\notepad.Lnk goto end
 echo le racourssis de note pad n'existe pas !
 pause
 shortcut /f:%USERPROFILE%\desktop\notepad.Lnk /t:%WINDIR%\system32\notepad.exe /a:c
 :end
 cls
 pause