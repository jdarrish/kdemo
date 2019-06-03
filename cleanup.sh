gcloud container clusters get-credentials dev-cluster01 --zone=us-central1-c
kubectl delete deployment --all --namespace=bmw
kubectl delete deployment --all --namespace=bmw
kubectl delete deployment --all --namespace=bmw

gcloud container clusters get-credentials prod-cluster --zone=us-central1-c
kubectl delete deployment --all --namespace=bmw
kubectl delete deployment --all --namespace=ferrari
kubectl delete deployment --all --namespace=renault
