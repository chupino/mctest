FROM itzg/minecraft-server
ENV EULA=true
ENV VERSION=1.21
EXPOSE 25565
COPY world .
RUN sudo chown $user:$user server.properties
