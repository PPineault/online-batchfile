"C:\Program Files (x86)\ClamWin\bin\clamscan.exe" --database="C:\ProgramData\.clamwin\db" --bell --log=F:\virus.txt -r --remove=yes "F:\CFNT" 
pause
"C:\Program Files\7-Zip\7z.exe" a C:\donnees.7z F:\CFNT -p12345
pause