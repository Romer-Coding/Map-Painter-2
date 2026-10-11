@echo off
REM Starts a local web server rooted in THIS folder and opens the main menu
REM (menu.html — pick a nation/preset/custom entity) in your default browser.
REM Just double-click this. The menu itself launches Geo/world_map_v2.html
REM once you hit Play — mirrors Map Painter 1's own launcher/menu flow.

REM %~dp0 = the folder this .bat file itself lives in. Rooting the server
REM HERE (not inside Geo/, like before) so menu.html and static/ are directly
REM servable too. world_map_v2.html's own relative fetches (game.js,
REM custom_geo.json, etc.) still resolve correctly from Geo/, since a
REM browser resolves a page's relative URLs against the page's own address,
REM not the server root.
cd /d "%~dp0"

REM Port 8124, distinct from Map Painter 1's 8123, so both can run at once
REM without colliding, and distinct from 8000/8001 to avoid any stale
REM leftover server from earlier testing silently answering from the wrong folder.
start "Map Painter 2 Server" /min cmd /k "python -m http.server 8124"

REM Give the server a moment to spin up before opening the browser.
timeout /t 2 /nobreak >nul

start "" "http://localhost:8124/menu.html"
