FROM ubuntu:18.04

RUN apt-get clean -y
RUN apt-get update -y
RUN apt-get install -y git
RUN apt-get install -y build-essential
RUN apt-get install -y clang
RUN apt-get install -y make
RUN apt-get install -y pkg-config
RUN apt-get install -y libcpputest-dev

# Set clang as the default C/C++ compiler
RUN update-alternatives --install /usr/bin/cc cc /usr/bin/clang 9999
RUN update-alternatives --install /usr/bin/c++ c++ /usr/bin/clang++ 9999

# Install CMake 3.14.5
ADD https://github.com/Kitware/CMake/releases/download/v3.14.5/cmake-3.14.5-Linux-x86_64.sh /cmake-3.14.5-Linux-x86_64.sh
RUN chmod u+x /cmake-3.14.5-Linux-x86_64.sh
RUN /cmake-3.14.5-Linux-x86_64.sh --skip-license --prefix=/usr/local
