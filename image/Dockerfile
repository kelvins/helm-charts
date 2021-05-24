FROM python:3.9.5-slim-buster

RUN apt-get update && apt-get install -qq -y \
    build-essential python3-dev python-mysqldb

COPY requirements.txt /tmp/requirements.txt

RUN pip install -r /tmp/requirements.txt

ENV USER admin
ENV PASS supersafe
ENV HOST localhost
ENV PORT 3306
ENV DATABASE mlflow
ENV LOGLEVEL info

ENV ARTIFACT_ROOT /tmp

EXPOSE 5000

COPY entrypoint.sh /tmp/entrypoint.sh

ENTRYPOINT ["/bin/bash", "/tmp/entrypoint.sh"]

CMD ["bash", "-c", "mlflow server --host 0.0.0.0 --port 5000 --backend-store-uri $BACKEND_STORE_URI --default-artifact-root $ARTIFACT_ROOT"]
