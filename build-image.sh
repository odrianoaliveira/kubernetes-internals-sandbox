#!/bin/bash
set -euo pipefail

VERSION="1.2"

echo "🚀 Building the app image service:$VERSION ..."
docker build -f app-k8s/Dockerfile -t service:$VERSION .

echo "✅ Build complete!"

