echo "Deploying first to dev-cluster01 "

gcloud container clusters get-credentials dev-cluster01 --zone=us-central1-c
kubectl apply -f bmw-cfd.yaml
kubectl apply -f bmw-db.yaml
kubectl apply -f bmwpvc.yaml
kubectl apply -f ferrari-cfd.yaml
kubectl apply -f ferrari-db.yaml
kubectl apply -f renault01pvc.yaml
kubectl apply -f renault01.yaml
echo "sleeping for 5 sec...\n"
sleep 5
echo "Deploying second to prod-cluster"+\n
echo "."
gcloud container clusters get-credentials prod-cluster --zone=us-central1-c
kubectl apply -f renault02pvc.yaml
kubectl apply -f renault02.yaml

