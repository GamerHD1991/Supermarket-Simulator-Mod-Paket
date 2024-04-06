@echo off
echo Aktualisiere Mod-Paket...
echo Herunterladen der neuesten Version...
curl -L -o "Mod_Paket.zip" "https://github.com/GamerHD1991/Supermarket-Simulator-Mod-Paket/archive/refs/heads/main.zip"
echo Entpacken des Mod-Pakets...
powershell -command "Expand-Archive -Path 'Mod_Paket.zip' -DestinationPath . -Force"
xcopy /Y /E "Supermarket-Simulator-Mod-Paket-main\*" .
rmdir /S /Q "Supermarket-Simulator-Mod-Paket-main"
del /Q "Mod_Paket.zip"
echo Mod-Paket erfolgreich aktualisiert.
exit