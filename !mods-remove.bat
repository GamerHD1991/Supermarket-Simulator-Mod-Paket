@echo off
setlocal

REM Schritt 1: Löschen alter Daten im Ordner, außer bestimmten Dateien und Ordnern
echo Löschen alter Daten im Ordner...
REM Fügen Sie hier den Code zum Löschen alter Daten ein.

REM Schritt 2: Löschen bestimmter einzelner Dateien
echo Löschen bestimmter einzelner Dateien...
REM Fügen Sie hier den Code zum Löschen bestimmter einzelner Dateien ein.

REM Schritt 3: Löschen der übrigen Dateien und Ordner im aktuellen Verzeichnis
echo Löschen übriger Dateien und Ordner im aktuellen Verzeichnis...
REM Fügen Sie hier den Code zum Löschen der übrigen Dateien und Ordner ein.

REM Schritt 4: Sprachausgabe mit angepasster Lautstärke
echo Hallo Supermarkt-Fan! Schade, dass der Mod entfernt wurde. Aber kein Grund zur Sorge, ihr konnt immer noch Gamer-HD-1991 fur seine Arbeit danken. Also los, geniesst eure Zeit ohne Mod-Paket und vielleicht gibt es bald wieder etwas Neues! | powershell -command "& {Add-Type -AssemblyName System.Speech; $synthesizer = New-Object System.Speech.Synthesis.SpeechSynthesizer; $synthesizer.Volume = 50; $synthesizer.Speak([Console]::In.ReadToEnd())}"

REM Warten, bis die Sprachausgabe abgeschlossen ist (5 Sekunden)
timeout /t 1 /nobreak >nul

REM Öffnen der Twitch-Seite von Gamer HD 1991
start https://www.twitch.tv/gamerhd1991


REM Schritt 1: Löschen alter Daten im Ordner, außer bestimmten Dateien und Ordnern
echo Löschen alter Daten im Ordner...
for %%D in ("BepInEx\cache" "BepInEx\core" "BepInEx\patchers" "MLLoader\assets" "MLLoader\MelonLoader" "MLLoader\Mods") do (
    if exist "%%D" (
        rd /s /q "%%D"
    )
)

REM Schritt 2: Löschen bestimmter einzelner Dateien
echo Löschen bestimmter einzelner Dateien...
del "BepInEx\config\BepInEx.cfg" /f /q
del "BepInEx\config\BepInEx.MelonLoader.Loader.UnityMono.cfg" /f /q
del "BepInEx\config\Tobey.FileTree.cfg" /f /q

REM Schritt 3: Löschen der übrigen Dateien und Ordner im aktuellen Verzeichnis
echo Löschen übriger Dateien und Ordner im aktuellen Verzeichnis...
for /f "delims=" %%I in ('dir /b /a ^| findstr /v /b /c:"Supermarket-Simulator-Mod-Paket-main.zip" /c:"MonoBleedingEdge" /c:"Supermarket Simulator_BurstDebugInformation_DoNotShip" /c:"Supermarket Simulator_Data" /c:"Supermarket Simulator.exe" /c:"UnityCrashHandler64.exe" /c:"UnityPlayer.dll"') do (
    if exist "%%I" (
        rem Es ist eine Datei oder ein Ordner
        del "%%I" /f /q
    )
)

exit
