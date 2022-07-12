FROM tiltedphoques/st-reborn-server:latest
ENV PORT 10578
EXPOSE 10578/udp
WORKDIR /home/server
ENTRYPOINT ["./SkyrimTogetherServer"]
