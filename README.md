# Mlflow Server

## Install chart

```
helm install \
    --set postgresql.postgresqlUsername="mlflow-user" \
    --set postgresql.postgresqlPassword="mlflow-pass" \
    --set postgresql.postgresqlDatabase="mlflow" \
    --set minio.accessKey.password="access-key" \
    --set minio.secretKey.password="secret-key" \
    --namespace="mlflow" \
    --create-namespace \
    --generate-name \
    chart
```

## Dependencies

- PostgreSQL: https://artifacthub.io/packages/helm/bitnami/postgresql
- MinIO: https://artifacthub.io/packages/helm/bitnami/minio

## Docs

Generate docs: https://github.com/norwoodj/helm-docs
