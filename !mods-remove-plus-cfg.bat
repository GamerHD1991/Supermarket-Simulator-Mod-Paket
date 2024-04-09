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
echo Achtung Achtung Supermarkt-Fan! Du bist gerade dabei nicht nur die mods zu entfernen, sondern auch deine ganzen einstellung von den mods, z.b. die farben der wände. Du hast noch 10 sekunden zeit um das fenster zu schließen, damit du die einstellung behalten tust.  bedanken kannst du dich dennoch bei Gamer-HD-1991 fur seine Arbeit. | powershell -command "& {Add-Type -AssemblyName System.Speech; $synthesizer = New-Object System.Speech.Synthesis.SpeechSynthesizer; $synthesizer.Volume = 50; $synthesizer.Speak([Console]::In.ReadToEnd())}"

REM Warten, bis die Sprachausgabe abgeschlossen ist (5 Sekunden)
timeout /t 10 /nobreak >nul

REM Öffnen der Twitch-Seite von Gamer HD 1991
start https://www.twitch.tv/gamerhd1991

REM Dateien, die nicht gelöscht werden sollen
set "keep_files=Supermarket Simulator.exe UnityCrashHandler64.exe UnityPlayer.dll mods-remove.bat mods-update.bat"

REM Ordner, die nicht gelöscht werden sollen
set "keep_folders=MonoBleedingEdge Supermarket Simulator_BurstDebugInformation_DoNotShip Supermarket Simulator_Data"

REM Löschen aller Dateien außer den angegebenen
for %%F in (*) do (
    echo %%F| findstr /i "%keep_files%" >nul || del "%%F" /q
)

REM Löschen aller Ordner außer den angegebenen
for /d %%D in (*) do (
    echo %%D| findstr /i "%keep_folders%" >nul || rmdir "%%D" /s /q
)

echo Alle unerwünschten Dateien und Ordner wurden gelöscht.

exit
