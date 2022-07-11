FROM tiltedphoques/st-reborn-server:latest
EXPOSE map[$PORT/udp:{}]
EXPOSE $PORT/udp
WORKDIR /home/server
ENTRYPOINT ["./SkyrimTogetherServer"]
