@echo off 
rem d‚sactiver l'affichage des commandes ex‚cut‚es 
rem Affichage du menu 
:debut 
cls 
echo. 
rem change de ligne, affiche une ligne vide 
echo. 
echo 1 - Cr‚er un fichier texte contenant la liste des pilotes 
echo. 
echo 2 - D‚contamination … l'aide de Avast 
echo. 
echo 3 - Compresser … l'aide de 7-zip 
echo. 
echo q - Quitter le script 

 

rem choix possible par l'utilisateur sans la casse 
choice /c 123q /m " Que voulez-vous faire ? "  
pause
 

rem Branchement vers les ‚tiquettes en fonction de la touche press‚e 

 

rem si la touche est q alors va … l'‚tiquette end 
if errorlevel 4 goto end 
pause
 

rem si la touche est 3 alors va … l'‚tiquette zip 
if errorlevel 3 goto zip 
pause
 

rem si la touche est 2 alors va … l'‚tiquette scan 
if errorlevel 2 goto scan 
pause
 

rem si la touche est 1 alors va … l'‚tiquette pilotes 
if errorlevel 1 goto pilotes 
pause
 

:pilotes 
rem cr‚ation de la liste 
driverquery /fo list > c:\pilotes.txt 
goto debut 
pause
 

:scan 
rem D‚marrage de la d‚contamination avec Avast 
"C:\Program Files\Avast Software\Avast\ashCmd.exe" "D:\windows 8" /p=1 /R=C:\virus.txt 
goto debut
pause
:zip 
rem D‚marrage de la compression 
"C:\Program Files\7-Zip\7z.exe" a c:\donnees.7z "d:\windows 8" 
goto debut 
pause
 

rem etiquette end 
:end 
cls 
echo. 
echo A la prochaine
pause  