FROM itzg/minecraft-server
ENV EULA=true
ENV VERSION=1.20
ENV FORCE_WORLD_COPY=TRUE
EXPOSE 25565
COPY ./parkour/* ./parkour/
COPY ./serverproperties ./serverproperties
COPY ./ops.json ./
RUN chmod 777 ./serverproperties
RUN mv ./serverproperties ./server.properties
run chmod -R 777 ./parkour
