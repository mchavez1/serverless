FROM kitware/cmake:ci-debian10-x86_64-2020-04-27
RUN apt-get --allow-releaseinfo-change update
RUN apt-get -y install wget git build-essential doxygen graphviz ninja-build libboost-all-dev libssl-dev libcpprest-dev
RUN git clone -b master https://github.com/pocoproject/poco.git
RUN cd poco && \
mkdir cmake-build && cd cmake-build  &&\
cmake .. \
&& cmake --build . --target install  &&\
cd ../.. && rm -rf poco 
CMD echo "TEST test test"