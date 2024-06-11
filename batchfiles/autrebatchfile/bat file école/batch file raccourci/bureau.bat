@echo off
REM si le fichier %USERPROFILE%\desktop\wordpad.Lnk existe, branche … l'‚tiquette end 
if exist %USERPROFILE%\desktop\wordpad.Lnk goto end
echo le raccourci de wordpad n'existe pas !
pause
shortcut /f:%USERPROFILE%\desktop\wordpad.Lnk /t:"C:\Program Files\Windows NT\Accessories\wordpad.exe" /a:c
 :end
 cls
 pause