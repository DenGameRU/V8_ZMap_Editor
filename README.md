# Vigilante 8 Global Zone Map Editor (ZMAP)

A graphical Delphi 7 tile-based level configuration utility designed to read, modify, and rebuild the proprietary global map layout grids (`ZMAP` structures) from the **Vigilante 8** engine on the PlayStation 1 (PS1).

## Features
- **32x32 Grid Gridspace Matrix:** Implements a fixed coordinate workspace array mapping out exactly 1,024 interchangeable zone tiles using 2-byte (`Short`) memory block allocations.
- **Dynamic Variable Indexing:** Supports accurate bit-shifted tool indices utilizing programmatic structural step gaps (`256`, `512`, `768` ... up to `2304`) to match the Luxoflux engine sub-grid configurations.
- **Interactive Matrix Flipping:** Resolves PlayStation 1 axis orientation quirks by automatically swapping coordinates (`map[x,y]` to `map[y,x]`) during read/write cycles to align with horizontal console memory scanlines.
- **Dual-Button Brush Toolset:** Features quick drawing mechanics where the Left Mouse Button injects the active texture index zone, and the Right Mouse Button acts as a clean eraser tool.
- **Visual Grid Canvas Refresh:** Triggers direct window handle re-rendering loops (`invalidate`) to instantly overlay custom grid graphics using bundled texture bitmap caches.

## Technical Map Blueprint Specs
The utility parses raw, uncompressed 2048-byte sector matrix clusters using the following linear layout:
- **Tile Element Payload:** 2 bytes per cell (`Int16 / Short` identifier values).
- **Total Record Data Footprint:** 32 rows × 32 columns × 2 bytes = 2,048 bytes exact.

## Usage
1. Compile the workspace project in Delphi 7 and launch the executable.
2. Select **File -> Load** to import a decrypted global map chunk file.
3. Use the sidebar `RadioButtons` to swap active environment tiles (such as custom road segments, canyon terrains, or structural barriers).
4. Click and drag your cursor over the map array window to paint your custom map boundaries.
5. Select **File -> Save** to save your modifications. The output file is packed with correct hardware-specific scanline transformations, ready for compilation.

## Original Credits
Developed by **DenGame** (2009-2016). Adapted from an open-source visual path matrix pattern to preserve legacy console reverse-engineering tooling history.
