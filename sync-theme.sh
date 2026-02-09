#!/bin/bash
# Sync Ira Custom Teal theme between VS Code and Cursor

THEME_DIR="ira-custom-teal-theme"
VSCODE_PATH="$HOME/.vscode/extensions/$THEME_DIR"
CURSOR_PATH="$HOME/.cursor/extensions/alexkydanov.$THEME_DIR"

# Colors for output
GREEN='\033[0;32m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

case "$1" in
  "to-cursor")
    echo -e "${BLUE}Syncing VS Code → Cursor...${NC}"
    cp -r "$VSCODE_PATH"/* "$CURSOR_PATH/"
    echo -e "${GREEN}✓ Theme copied to Cursor${NC}"
    ;;
  "to-vscode")
    echo -e "${BLUE}Syncing Cursor → VS Code...${NC}"
    cp -r "$CURSOR_PATH"/* "$VSCODE_PATH/"
    echo -e "${GREEN}✓ Theme copied to VS Code${NC}"
    ;;
  "edit")
    echo -e "${BLUE}Opening theme in editor...${NC}"
    code "$VSCODE_PATH/themes/ira-custom-teal.json"
    ;;
  *)
    echo "Usage:"
    echo "  $0 to-cursor   - Copy from VS Code to Cursor"
    echo "  $0 to-vscode   - Copy from Cursor to VS Code"
    echo "  $0 edit        - Open theme for editing"
    exit 1
    ;;
esac

echo -e "${BLUE}Don't forget to reload the editor (Cmd+Shift+P → Reload Window)${NC}"
