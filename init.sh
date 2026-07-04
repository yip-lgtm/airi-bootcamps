# /app/airi-bootcamps/init.sh — Run on every container rebuild
# Restore AIRI + bootcamp repos after container restart

set -e

cd /app

REPOS=(
    "airi-bootcamps"
    "HKU-BME-Bootcamp-OpenClaw"
    "istructe-bootcamp"
    "PhysicsSelfStudy"
    "psych-self-study-hku"
)

echo "=== Bootstrap: restore bootcamp repos ==="

for repo in "${REPOS[@]}"; do
    if [ -d "$repo" ]; then
        echo "✓ /app/$repo exists"
    else
        echo "cloning $repo..."
        git clone --depth 1 "https://github.com/yip-lgtm/$repo.git" 2>&1 | tail -1
    fi
done

# AIRI
if [ ! -d "airi" ]; then
    echo "cloning AIRI..."
    git clone --depth 1 https://github.com/moeru-ai/airi.git 2>&1 | tail -1
fi

# Install deps + start AIRI if not already running
if ! pgrep -f "vite" > /dev/null; then
    echo "=== Installing AIRI deps ==="
    cd /app/airi && pnpm install 2>&1 | tail -2
    echo "=== Starting AIRI ==="
    nohup pnpm dev:web > /tmp/airi-dev.log 2>&1 &
    echo "AIRI PID $!, logging to /tmp/airi-dev.log"
    sleep 12
    curl -s -o /dev/null -w "AIRI HTTP probe: %{http_code}\n" http://localhost:5173/
fi

echo "=== Done ==="
