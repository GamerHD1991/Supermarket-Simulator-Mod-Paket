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
echo Hallo Supermarkt-Fan! dein Mod wurde gerade frisch aufgepeppt, und dafur könnt ihr euch bei Gamer-HD-1991 bedanken. Also los, habt jede Menge Spass mit dem Mod-Paket! | powershell -command "& {Add-Type -AssemblyName System.Speech; $synthesizer = New-Object System.Speech.Synthesis.SpeechSynthesizer; $synthesizer.Volume = 50; $synthesizer.Speak([Console]::In.ReadToEnd())}"

REM Warten, bis die Sprachausgabe abgeschlossen ist (5 Sekunden)
timeout /t 1 /nobreak >nul

REM Öffnen der Twitch-Seite von Gamer HD 1991
start https://www.twitch.tv/gamerhd1991

REM Schritt 1: Herunterladen der ZIP-Datei von GitHub
echo Herunterladen der ZIP-Datei von GitHub...
powershell -command "(New-Object Net.WebClient).DownloadFile('https://github.com/GamerHD1991/Supermarket-Simulator-Mod-Paket/archive/refs/heads/main.zip', 'Supermarket-Simulator-Mod-Paket-main.zip')"

REM Überprüfen, ob die Datei erfolgreich heruntergeladen wurde
if exist "Supermarket-Simulator-Mod-Paket-main.zip" (
    REM Schritt 2: Löschen alter Daten im Ordner, außer bestimmten Dateien und Ordnern
    echo Löschen alter Daten im Ordner...
    for %%D in ("BepInEx\cache" "BepInEx\core" "BepInEx\patchers" "MLLoader\assets" "MLLoader\MelonLoader" "MLLoader\Mods" "Plugins" "README" "ReShade_Setup") do (
        if exist "%%D" (
            rd /s /q "%%D"
        )
    )

    REM Schritt 3: Löschen bestimmter einzelner Dateien
    echo Löschen bestimmter einzelner Dateien...
    del "BepInEx\config\BepInEx.cfg" /f /q
    del "BepInEx\config\BepInEx.MelonLoader.Loader.UnityMono.cfg" /f /q
    del "BepInEx\config\Tobey.FileTree.cfg" /f /q

    REM Schritt 4: Löschen der übrigen Dateien und Ordner im aktuellen Verzeichnis
    echo Löschen übriger Dateien und Ordner im aktuellen Verzeichnis...
    for /f "delims=" %%I in ('dir /b /a ^| findstr /v /b /c:"Supermarket-Simulator-Mod-Paket-main.zip" /c:"MonoBleedingEdge" /c:"Supermarket Simulator_BurstDebugInformation_DoNotShip" /c:"Supermarket Simulator_Data" /c:"Supermarket Simulator.exe" /c:"UnityCrashHandler64.exe" /c:"UnityPlayer.dll"') do (
        if exist "%%I" (
            rem Es ist eine Datei oder ein Ordner
            del "%%I" /f /q
        )
    )

    REM Schritt 5: Entpacken der ZIP-Datei
    echo Entpacken der ZIP-Datei...
    powershell -command "Expand-Archive -Path 'Supermarket-Simulator-Mod-Paket-main.zip' -DestinationPath '.' -Force"

    REM Schritt 6: Verschieben der entpackten Daten in den selben Ordner
    echo Verschieben der entpackten Daten...
    xcopy /s /y "Supermarket-Simulator-Mod-Paket-main\*" ".\"
    rd /s /q "Supermarket-Simulator-Mod-Paket-main"

    REM Schritt 7: Löschen der heruntergeladenen ZIP-Datei
    echo Löschen der heruntergeladenen ZIP-Datei...
    del /q "Supermarket-Simulator-Mod-Paket-main.zip"

    echo Alle Schritte abgeschlossen.
) else (
    echo Die ZIP-Datei konnte nicht heruntergeladen werden. Überprüfen Sie Ihre Internetverbindung und versuchen Sie es erneut.
)

exit
