@ECHO OFF
echo Ремувер для кешевых сервисов
pause
sc stop "WinDivert"
sc delete "WinDivert"
sc stop "WinDivert14"
sc delete "WinDivert14"
