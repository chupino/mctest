FROM itzg/minecraft-server
ENV EULA=true
ENV VERSION=1.21
EXPOSE 25565
COPY world .
ENTRYPOINT echo "Corriendo (la mami de noa esta buena 😬)"
