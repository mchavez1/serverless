FROM tiltedphoques/st-reborn-server:latest
EXPOSE map[10578/udp:{}]
EXPOSE 10578/udp
WORKDIR /home/server
ENTRYPOINT ["./SkyrimTogetherServer"]
