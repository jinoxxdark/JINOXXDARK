#!/bin/bash

cd "$HOME" || exit

echo "[+] Downloading JINOXXDARK script..."
curl -sL -o jinoxx.sh "https://raw.githubusercontent.com/jinoxxdark/JINOXXDARK/main/jinoxx.sh"

if [ ! -f jinoxx.sh ]; then
    echo "[!] Download failed. Please check the URL."
    exit 1
fi

chmod +x jinoxx.sh

echo "[+] Installing command to PATH..."
mv jinoxx.sh "$PREFIX/bin/JINOXXDARK" 2>/dev/null || sudo mv jinoxx.sh /usr/local/bin/JINOXXDARK
chmod +x "$PREFIX/bin/JINOXXDARK"

echo ""
echo "[✔] Installation complete!"
echo "Use the tool by typing: JINOXXDARK"
