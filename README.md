# Mlflow Server

## Install HELM chart

```
helm install dorothy \
    --set mariadb.auth.rootPassword="root" \
    --set mariadb.auth.username="mlflow-user" \
    --set mariadb.auth.password="mlflow-pass" \
    --set minio.accessKey.password=access-key \
    --set minio.secretKey.password=secret-key \
    --set dbConfig.username="mlflow-user" \
    --set dbConfig.password="mlflow-pass" \
    --namespace="mlflow" \
    --create-namespace \
    chart
```

## Notes

- It is necessary to create the `mlflow` bucket on minio manually.

## References

- Mlflow Tracking: https://www.mlflow.org/docs/latest/tracking.html
