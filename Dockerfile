FROM cm2network/steamcmd:latest

ENV VALHEIMNAME "docker_valheim"
ENV VALHEIMWORLD "dockerworld"
ENV VALHEIMPASS "valheimpass"
ENV VALEHIMPUBLIC 1

USER steam
RUN /home/steam/steamcmd/steamcmd.sh +login anonymous +app_update 896660 validate +exit

EXPOSE 2456-2458

COPY files/start_server.sh /home/steam/start_server.sh
VOLUME /home/steam/.config/unity3d/IronGate/Valheim

CMD [ "/home/steam/start_server.sh" ]
