# kdemo - Demonstrate GKE Usage Metering

1. To create the dev-cluster01 run createdevcluster.sh (gcloud command)
2. To create the prod-cluster run createprodcluster.sh (gcloud command)
3. To create the namespaces run createns.sh (kubectl commands)
4. Run loadallteams.sh to instantiate all the workload generators across both dev-cluster01 and prod-cluster (kubectl commands)
   Note: in order to generate cost within the GCP cluster against a storage SKU, unbound persistent-volume claims are also created
   
5. Run cleanup.sh to remove the workload generators and persistent volume claims (kubectl commands)
   Note: clusters and namespaces remain after running the cleanup script

