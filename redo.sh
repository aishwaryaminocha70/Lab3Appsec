kubectl delete -f db/k8
kubectl delete -f GiftcardSite/k8
kubectl delete -f proxy/k8
minikube stop
docker system prune --force
minikube delete
minikube start --driver=docker
eval $(minikube docker-env)
docker build -t nyuappsec/assign3:v0 .
docker build -t nyuappsec/assign3-proxy:v0 proxy/
docker build -t nyuappsec/assign3-db:v0 db/
kubectl apply -f db/k8
kubectl apply -f GiftcardSite/k8
kubectl apply -f proxy/k8
sleep 30
kubectl get pods
kubectl get service