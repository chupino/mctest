git clone https://github.com/chupino/mctest.git mc
cd mc

docker build -t mc .

if [ $? -eq 0 ]; then
	echo "Desplegado 🍕 (noa chipi)"
else
	echo "El despliegue falló (la mami de noa tiene la culpa)"
	exit 1
fi

docker run -dp 25565:25565 mc
