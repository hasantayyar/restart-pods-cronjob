# restart-pods-cronjob

Kubernetes cronjob resource to restart pods

Requirements:
- `GCLOUD_PROJECT` and `CLUSTER_NAME` env variables need to be in place.
- `service-account.json` file should be mounted as secret.


See `resource.yml` for customising the cronjob.
