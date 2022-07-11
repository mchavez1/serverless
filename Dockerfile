FROM tiltedphoques/st-reborn-server:latest
EXPOSE 10578/udp
WORKDIR /home/server
ENTRYPOINT ["./SkyrimTogetherServer"]
