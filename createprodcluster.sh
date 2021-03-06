gcloud beta container --project "kdemo-242119" clusters create "prod-cluster" --zone "us-central1-c" --no-enable-basic-auth --cluster-version "1.13.6-gke.0" --machine-type "g1-small" --image-type "COS" --disk-type "pd-standard" --disk-size "10" --node-labels klabel2=orange,klabel1=pool01 --metadata disable-legacy-endpoints=true --scopes "https://www.googleapis.com/auth/devstorage.read_only","https://www.googleapis.com/auth/logging.write","https://www.googleapis.com/auth/monitoring","https://www.googleapis.com/auth/servicecontrol","https://www.googleapis.com/auth/service.management.readonly","https://www.googleapis.com/auth/trace.append" --num-nodes "2" --enable-stackdriver-kubernetes --enable-ip-alias --network "projects/kdemo-242119/global/networks/kdemo-vpc1" --subnetwork "projects/kdemo-242119/regions/us-central1/subnetworks/uc1" --default-max-pods-per-node "110" --addons HorizontalPodAutoscaling,HttpLoadBalancing --enable-autoupgrade --enable-autorepair --labels ptptype=prod,tier=web --resource-usage-bigquery-dataset "kdemo_usagedata"

