#!/bin/bash
cd $(dirname "$0")
php -S localhost:8080 > /dev/null 2>&1 &
sleep 2
echo "[✓] PHP server started on localhost:8080"
cloudflared tunnel --url http://localhost:8080