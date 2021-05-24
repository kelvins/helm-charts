# Mlflow Server

## Install HELM chart

```
helm install mlflow \
    --set mariadb.auth.rootPassword="root" \
    --set mariadb.auth.database="mlflow-db" \
    --set mariadb.auth.username="mlflow-user" \
    --set mariadb.auth.password="mlflow-pass" \
    --set dbConfig.database="mlflow-db" \
    --set dbConfig.username="mlflow-user" \
    --set dbConfig.password="mlflow-pass" \
    --namespace="mlflow" \
    --create-namespace \
    --dry-run \
    chart
```

## References

- Mlflow Tracking: https://www.mlflow.org/docs/latest/tracking.html
