# generate traffic
kubectl port-forward pod/multi-container-app 8080:80

# check logs
kubectl logs multi-container-app -c log-tailer
