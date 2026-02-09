# Ira Custom Teal Theme

A custom dark theme based on Material Theme with elegant teal accents.

## Installation

### First Time Installation (from GitHub)

```bash
# For VS Code
git clone https://github.com/YOUR_USERNAME/ira-custom-teal-theme.git \
  ~/.vscode/extensions/ira-custom-teal-theme

# For Cursor (with correct publisher prefix)
git clone https://github.com/YOUR_USERNAME/ira-custom-teal-theme.git \
  ~/.cursor/extensions/alexkydanov.ira-custom-teal-theme
```

Replace `YOUR_USERNAME` with your GitHub username.

### Updating the Theme

```bash
# VS Code
cd ~/.vscode/extensions/ira-custom-teal-theme
git pull

# Cursor
cd ~/.cursor/extensions/alexkydanov.ira-custom-teal-theme
git pull
```

## Activation

1. Open Command Palette: `Cmd+Shift+P` (Mac) or `Ctrl+Shift+P` (Windows/Linux)
2. Type: "Color Theme"
3. Select: **`Ira Custom Teal`**

Or set it in settings.json:
```json
{
  "workbench.colorTheme": "Ira Custom Teal"
}
```

## Customization

To modify theme colors, edit the theme file:
- VS Code: `~/.vscode/extensions/ira-custom-teal-theme/themes/ira-custom-teal.json`
- Cursor: `~/.cursor/extensions/alexkydanov.ira-custom-teal-theme/themes/ira-custom-teal.json`

After making changes, reload the editor: `Cmd+Shift+P` → "Reload Window"

## Color Palette

- **Teal Accent**: `#80CBC4` - used for active elements, tab borders, links
- **Editor Background**: `#263238`
- **Sidebar/Panel**: `#263238`
- **Text**: `#EEFFFF`
- **Comments**: `#546E7A`
- **Strings**: `#C3E88D`
- **Keywords**: `#89DDFF`
- **Functions**: `#82AAFF`

## Syncing Between VS Code and Cursor

To sync changes between editors:
```bash
# From VS Code to Cursor
cp ~/.vscode/extensions/ira-custom-teal-theme/themes/ira-custom-teal.json \
   ~/.cursor/extensions/alexkydanov.ira-custom-teal-theme/themes/ira-custom-teal.json

# From Cursor to VS Code
cp ~/.cursor/extensions/alexkydanov.ira-custom-teal-theme/themes/ira-custom-teal.json \
   ~/.vscode/extensions/ira-custom-teal-theme/themes/ira-custom-teal.json
```

Or use the sync script:
```bash
~/.vscode/extensions/ira-custom-teal-theme/sync-theme.sh to-cursor
~/.vscode/extensions/ira-custom-teal-theme/sync-theme.sh to-vscode
```

## Saving Changes to Git

After editing the theme, save your changes:
```bash
cd ~/.vscode/extensions/ira-custom-teal-theme
git add .
git commit -m "Update theme colors"
git push
```

Now your changes are saved in the cloud and accessible from any computer!
