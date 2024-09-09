git clone https://github.com/chupino/mctest.git mc
cd mc

docker-compose up -d

if [ $? -eq 0 ]; then
	echo "Desplegado 🍕 (noa chipi)"
else
	echo "El despliegue falló (la mami de noa tiene la culpa)"
	exit 1
fi
