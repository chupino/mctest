git clone https://github.com/chupino/mctest.git mc
cd mc

sudo chown $user:$user server.properties

docker build -t mctest .

if [ $? -eq 0 ]; then
	echo "Imagen construida 🍕 (noa chipi)"
else
	echo "La imagen falló (la mami de noa tiene la culpa)"
	exit 1
fi

docker run -dp 25565:25565 mctest
