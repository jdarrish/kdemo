echo "Create namespaces on dev-cluster01 "

gcloud container clusters get-credentials dev-cluster01 --zone=us-central1-c
kubectl create ns bmw
kubectl create ns ferrari
kubectl create ns renault
echo "sleeping for 5 sec...\n"
sleep 5
echo "Create namespaces on prod-cluster"+\n
echo "."
gcloud container clusters get-credentials prod-cluster --zone=us-central1-c
kubectl create ns renault
