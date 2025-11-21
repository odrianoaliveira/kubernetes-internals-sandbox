# set public service to Green
k set selector svc public-service 'role=green'

# Get http page
curl localhost:80

