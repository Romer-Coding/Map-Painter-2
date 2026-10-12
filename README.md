# Map Painter 2

An AI-driven alternate-history grand strategy sandbox that runs in your browser. Pick a nation (or
invent your own), give orders in plain language, jump forward in time, and an AI of your choice
simulates what happens next — wars, diplomacy, new governments, and borders that actually move on
the map.

Map Painter 2 draws the world with a Leaflet map at municipality level (about 48,000 shapes) over
satellite terrain. Its sister game, Map Painter 1, uses a faster WebGL map at state/province level.

## What you need

- **Windows** — the launcher is a `.bat` file (see "Other systems" below for macOS/Linux).
- **Python 3** — only its built-in web server is used. There is nothing to `pip install`.
  Get it from [python.org](https://www.python.org/downloads/) and tick "Add python.exe to PATH" during install.
- **A modern browser** — Chrome, Edge, or Firefox.
- **An internet connection** — the map library, satellite imagery, and fonts load from the web.
- **An AI provider** for the simulation — a cloud API key (Anthropic, OpenAI) or a free local model
  (Ollama, LM Studio, GPT4All). See [AI_SETUP.md](AI_SETUP.md).

## How to play

1. Download this repository (green **Code** button → **Download ZIP**) and unzip it.
2. Double-click **`Play Map Painter 2.bat`**. A small minimized server window opens, and your browser
   opens the main menu at `http://localhost:8124/menu.html`. Keep the server window open while you
   play; close it when you're done.
3. Go to **Presets** and pick a starting point: *Modern Day*, *World War I: The Road to War*,
   *World War I*, *World War II: The Road to War*, or *World War II*.
4. Click **Play Now**, then choose your nation on the map or from the list — or use **Custom** to
   create your own entity with a name, color, lore, and starting regions — and start the game.
5. The first time, connect an AI: gear icon (top right of the map) → **Game & AI Setup**.
   Step-by-step instructions for every provider are in [AI_SETUP.md](AI_SETUP.md).

**Other systems (macOS/Linux):** open a terminal in this folder, run `python3 -m http.server 8124`,
then open `http://localhost:8124/menu.html` in your browser.

## Playing the game

- **Actions** — write orders for your nation in plain language. **Enhance** sharpens the wording
  with the AI; **Brainstorm** suggests ideas.
- **Jump forward** — the **»** button on the date bar at the top. Choose how far to jump; the AI
  simulates everything that happens in that time, then reveals the events one by one while the map
  updates.
- **Advisor** — ask your AI advisor for briefings and strategy. It doesn't change the world.
- **Chats** — open diplomacy with any nation and negotiate directly.
- **Lore**, **Search**, country details, and a history of past events (the **‹** button on the date
  bar) round out the side panels.
- **Gear menu** — map and display options (fullscreen, zoom, border size, feature size) and
  **Game & AI Setup**.

**Saving:** your game saves automatically in this browser. **Continue Playing** on the main menu shows
it as *Map Painter 2 · start date · nation*. Saves live in the browser's local storage for
`localhost:8124`, so clearing that site's data deletes them.

## Files

| Path | What it is |
|---|---|
| `Play Map Painter 2.bat` | Launcher — starts the local server and opens the menu |
| `menu.html`, `static/menu.js`, `static/menu.css` | Main menu: Games, Presets, Flags, country picker |
| `Geo/world_map_v2.html`, `Geo/game.js` | The map game and its gameplay systems |
| `Geo/` | Map data (boundaries, regions, cities, rivers, country names, flag catalog) |
| `presets/` | Historical era setups (1911, 1914, 1936, 1939, modern) |
| `assets/flags/`, `Flags/eras/` | Flag images (see `assets/flags/ATTRIBUTION.md`) |
| `Geo/Play Map Painter 2 (Leaflet).bat` | Optional: opens the map directly on port 8001, skipping the menu |
| `app.py`, `game_engine.py`, `templates/`, `static/app.js`, `static/style.css`, `requirements.txt` | An earlier text-only prototype. Not used by the map game and not needed to play |

## License

- **Code** is released under the [MIT License](LICENSE). Copyright (c) 2026 Rmprocproc. You must keep
  this copyright notice in any copy or derivative of the code.
- **Original art and documentation** (fictional flag designs, `.md` files) are under
  [CC BY 4.0](LICENSE-ART.md). You must credit **Rmprocproc** as the author.

## Credits

Created by **Rmprocproc**.

Third-party material keeps its own license:

- **geoBoundaries** boundary data (CC BY 4.0), https://www.geoboundaries.org
- **GeoNames** city data (CC BY 4.0), https://www.geonames.org
- River data derived from **OpenStreetMap** (© OpenStreetMap contributors, ODbL)
- Satellite imagery: **NASA EOSDIS GIBS / Blue Marble**
- **Leaflet** and **TopoJSON** libraries
- Real and historical flags in `assets/flags/` from **Wikimedia Commons** (see `assets/flags/ATTRIBUTION.md`);
  menu flag thumbnails from **flagcdn.com**
- Preset photos from **Unsplash**, used under the Unsplash License
- AI features call a provider you choose (Anthropic, OpenAI, Ollama, LM Studio, GPT4All, etc.) using your own settings
