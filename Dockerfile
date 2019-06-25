FROM rikorose/gcc-cmake:gcc-7

RUN apt-get update -y
RUN apt-get install -y libcpputest-dev
