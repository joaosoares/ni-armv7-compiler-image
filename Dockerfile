FROM ubuntu

WORKDIR /usr/home/ubuntu

RUN apt-get update -qq && apt-get install -y bzip2 python

COPY oecore-x86_64-cortexa9-vfpv3-toolchain-5.0.sh .

RUN ./oecore-x86_64-cortexa9-vfpv3-toolchain-5.0.sh -y