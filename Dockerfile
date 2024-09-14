FROM itzg/minecraft-server
ENV EULA=true
ENV VERSION=1.20
EXPOSE 25565
COPY ./world2/ /worlds/world/
ENV WORLD=/worlds/world
COPY ./serverproperties ./serverproperties
COPY ./ops.json ./
RUN chmod 777 ./serverproperties
RUN mv ./serverproperties ./server.properties
