FROM ubuntu:noble

RUN apt-get update && apt-get -y install \
  g++ lld llvm-19-dev clang-19 clang-format-19 mlir-19-tools libmlir-19-dev bison libboost-dev libboost-context-dev libboost-system-dev libjemalloc-dev libre2-dev libssl-dev libpq-dev liburing-dev \
  ca-certificates lsb-release wget cmake libboost-filesystem1.83-dev ninja-build clang-18

RUN wget https://apache.jfrog.io/artifactory/arrow/$(lsb_release --id --short | tr 'A-Z' 'a-z')/apache-arrow-apt-source-latest-$(lsb_release --codename --short).deb && \
  apt install -y ./apache-arrow-apt-source-latest-$(lsb_release --codename --short).deb && \
  apt update && \
  apt install -y libarrow-dev

COPY libAnyBloxCpp.so.0.10.0 /usr/local/lib/
RUN ln -s /usr/local/lib/libAnyBloxCpp.so.0.10.0 /usr/local/lib/libAnyBloxCpp.so.0 && \
    ln -s /usr/local/lib/libAnyBloxCpp.so.0 /usr/local/lib/libAnyBloxCpp.so
