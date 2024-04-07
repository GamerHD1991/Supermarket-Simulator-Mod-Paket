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
echo Hallo Supermarkt-Fan! Auf der seite Findet ihr alle Waren vom officialen Supermarket Spiel. Ein grosses Dankeschon geht an Gamer-HD-1991! Bitte lasse ihn es wissen und folge ihm auf twitch und mehr. | powershell -command "& {Add-Type -AssemblyName System.Speech; $synthesizer = New-Object System.Speech.Synthesis.SpeechSynthesizer; $synthesizer.Volume = 50; $synthesizer.Speak([Console]::In.ReadToEnd())}"

REM Warten, bis die Sprachausgabe abgeschlossen ist (5 Sekunden)
timeout /t 1 /nobreak >nul

REM Öffnen der Twitch-Seite von Gamer HD 1991
start https://www.twitch.tv/gamerhd1991
start https://supermarket-simulator.fandom.com/wiki/Products

exit