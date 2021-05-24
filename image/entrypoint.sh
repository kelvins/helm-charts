export BACKEND_STORE_URI=mysql+pymysql://$USER:$PASS@$HOST:$PORT/$DATABASE

echo $BACKEND_STORE_URI
echo "Upgrading mlflow database..."
mlflow db upgrade $BACKEND_STORE_URI

exec "$@"
