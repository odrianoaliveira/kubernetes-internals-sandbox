# create dev ns
k create namespace dev

# make dev namespace default
k config set-context --current --namespace=dev

# create deployment 
k create deploy nginx-deploy --image=nginx:stable-alpine --replicas=4 --port=Z80

# create the service
k expose deploy nginx-deploy --port=9000 --target-port=80 --name=nginx-svc --type=NodePort

# scale replicas to 6 
edit deploy/nginx-deploy
// set replicas=6

# k get svc
NAME        TYPE       CLUSTER-IP       EXTERNAL-IP   PORT(S)          AGE
nginx-svc   NodePort   10.105.140.231   <none>        9000:30331/TCP   6m24s

# curl localhost:30331
<!DOCTYPE html>
<html>
<head>
<title>Welcome to nginx!</title>
