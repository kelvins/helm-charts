# Mlflow Server

## Install HELM chart

```
helm install dorothy \
    --set postgresql.postgresqlUsername="mlflow-user" \
    --set postgresql.postgresqlPassword="mlflow-pass" \
    --set postgresql.postgresqlDatabase="mlflow" \
    --set minio.accessKey.password=access-key \
    --set minio.secretKey.password=secret-key \
    --namespace="mlflow" \
    --create-namespace \
    --dry-run --debug \
    chart
```

## Notes

- It is necessary to create the `mlflow` bucket on minio manually.

## Dependencies

- PostgreSQL: https://artifacthub.io/packages/helm/bitnami/postgresql
- MinIO: https://artifacthub.io/packages/helm/bitnami/minio

## References

- Mlflow Tracking: https://www.mlflow.org/docs/latest/tracking.html
