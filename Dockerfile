FROM itzg/minecraft-server
ENV EULA=true
ENV VERSION=1.20
ENV FORCE_WORLD_COPY=TRUE
ENV WORLD=/worlds/world
EXPOSE 25565
COPY ./world2 /worlds
COPY ./serverproperties ./serverproperties
COPY ./ops.json ./
RUN chmod 777 ./serverproperties
RUN mv ./serverproperties ./server.properties
run chmod -R 777 ./parkour
