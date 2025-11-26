#!/bin/bash
cd "$HOME" || exit

echo "[+] Downloading JINOXXDARK script (jinoff.sh)..."

curl -sL -o jinoff.sh "https://raw.githubusercontent.com/jinoxxdark/JINOXXDARK/main/jinoff.sh"

# لو الرابط غلط سيعطي 404 → نوقف التثبيت
if ! grep -q "#!" jinoff.sh; then
    echo "[!] ERROR: Failed to download jinoff.sh (Maybe 404?)"
    echo "[!] تأكد أن الملف موجود في GitHub ومساره صحيح."
    rm jinoff.sh
    exit 1
fi

chmod +x jinoff.sh

mkdir -p "$PREFIX/bin"
mv jinoff.sh "$PREFIX/bin/JINOXXDARK"

chmod +x "$PREFIX/bin/JINOXXDARK"

echo ""
echo "[✔] Installation complete!"
echo "Run the tool by typing: JINOXXDARK"
