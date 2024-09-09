echo "Borrando repo..."
rm -rf mc
echo "Borrando containers..."
docker rm -f $(docker ps -lq)
echo "Borrando imagen..."
docker rmi -f mctest
