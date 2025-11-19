# generate traffics
kubectl port-forward pod/storage-demo-pod 8080:Z80

# check nginx logs
kubectl exec -it storage-demo-pod -c nginx -- sh
/ # cat /var/log/nginx/
