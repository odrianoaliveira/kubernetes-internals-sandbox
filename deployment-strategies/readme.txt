# Create a deployment
kubectl create deployment nginx --image=nginx:alpine --dry-run=client -o yaml > deployment.yaml

