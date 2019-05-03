echo "Update patchfile"
# update the patch to contain a lable "timestamp" as the date concatted into string with seconds.
sed -i "s/CHANGEME/$(date +%Y%m%d%H%M%S)/g" patch.yaml
cat patch.yaml

gcloud auth activate-service-account --project=$GCLOUD_PROJECT	 --key-file=service-account.json

gcloud container clusters get-credentials $CLUSTER_NAME --region europe-west1-d --project $GCLOUD_PROJECT

kubectl patch deployment $CLUSTER_NAME --patch "$(cat patch.yaml)"

kubectl get pods
