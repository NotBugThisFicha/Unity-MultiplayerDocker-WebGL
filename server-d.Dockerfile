FROM debian:stable-slim
RUN apt-get update && apt-get install -y unzip && rm -rf /var/lib/apt/lists/*
WORKDIR /opt
COPY  LinuxServer.zip /opt
RUN unzip LinuxServer.zip -d /opt/
RUN rm -f /opt/LinuxServer.zip
WORKDIR /opt/LinuxServer
RUN chmod +x Server.x86_64
CMD ["./Server.x86_64", "-launch-as-server"]