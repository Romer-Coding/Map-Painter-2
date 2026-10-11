@echo off
REM Starts a local web server rooted at the PROJECT folder (one level up from
REM this .bat, i.e. the same root "Play Map Painter 2.bat"/menu.html use) and
REM opens the Leaflet-based Map Painter 2 map in your default
REM browser. Rooted here — not in Geo/ itself, like before — because
REM Geo/game.js's era-override loader ("../presets/era_1939.json"), its
REM FLAGS_BASE_PATH ("../assets/flags/"), and world_map_v2.html's own
REM "Back to Main Menu" link ("../menu.html") all resolve relative to the
REM PROJECT root, not Geo/: serving from Geo/ made every one of those
REM requests 404 (silently falling back to modern borders for every
REM historical preset, among other breakage) since a browser clamps ".." at
REM the server root and can't reach a folder that was never served at all.
cd /d "%~dp0.."

start "Map Painter 2 (Leaflet) Server" /min cmd /k "python -m http.server 8001"

REM Give the server a moment to spin up before opening the browser.
timeout /t 2 /nobreak >nul

start "" "http://localhost:8001/Geo/world_map_v2.html"
