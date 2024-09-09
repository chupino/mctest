FROM itzg/minecraft-server
ENV EULA=true
ENV VERSION=1.20
EXPOSE 25565
COPY ./world/* ./world/
COPY ./serverproperties ./serverproperties
RUN chmod 777 ./serverproperties
RUN mv ./serverproperties ./server.properties
run chmod 777 ./world/session.lock
