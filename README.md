# restart-pods-cronjob

Kubernetes cronjob resource to restart pods

![restart](restart.gif)


## Installation

- Update  `cron.yaml` file by setting `DEPLOYMENT_NAME` env variable to your deployment name to be restarted
- Update schedule of the restart in `cron.yaml` 
- Apply all the resrouces in this order

```
kubectl create -f rbac.yaml
kubectl create -f cron.yaml
```


