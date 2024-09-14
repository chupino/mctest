FROM itzg/minecraft-server
ENV EULA=true
ENV VERSION=1.21
EXPOSE 25565
COPY ./world/ /worlds/world/
ENV WORLD=/worlds/world
#COPY ./serverproperties ./serverproperties
COPY ./ops.json ./
#RUN chmod 777 ./serverproperties
#RUN mv ./serverproperties ./server.properties
