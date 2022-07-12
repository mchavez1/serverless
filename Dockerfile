FROM tiltedphoques/st-reborn-server:latest
ENV PORT 10578
EXPOSE $PORT/udp
EXPOSE $PORT/tcp
WORKDIR /home/server
ENTRYPOINT ["./SkyrimTogetherServer"]
