FROM debian:latest
RUN apt-get update
RUN apt-get -y install git build-essential doxygen graphviz ninja-build libboost-all-dev libssl-dev libcpprest-dev
RUN wget https://github.com/Kitware/CMake/releases/download/v3.18.0-rc1/cmake-3.18.0-rc1.tar.gz && \
tar -xzvf cmake-3.18.0-rc1.tar.gz && cd cmake-3.18.0-rc1 \
./bootstrap && make \
sudo make install \
cd .. && rm -rf cmake-3.18.0-rc1 \
source
RUN git clone -b master https://github.com/pocoproject/poco.git \
cd poco \
mkdir cmake-build && cd cmake-build \
cmake .. \
sudo cmake --build . --target install \
cd ../.. && rm -rf poco 
CMD echo "TEST test test"