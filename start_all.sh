#!/bin/zsh

echo "🚀 Starting Flask (main.py) + Cloudflare Tunnel"

source venv/bin/activate

export FLASK_APP=main.py
export FLASK_ENV=development

flask run --host=127.0.0.1 --port=8000 &

cloudflared tunnel run

