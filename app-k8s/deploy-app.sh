#!/bin/bash
set -euo pipefail

echo "🚀 Deploying the app into k8s..."

kubectl apply -f app-pod.yaml
kubectl apply -f app-service.yaml

echo "✅ App deployed!"

