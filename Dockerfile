FROM ubuntu

# Workdir setup
WORKDIR /usr/home/ubuntu

# Dependencies
RUN apt-get update -qq && apt-get install -qq -y  \
  build-essential \
  bzip2 \
  python-pip

# Install cross compiler
COPY oecore-x86_64-cortexa9-vfpv3-toolchain-5.0.sh .
RUN ./oecore-x86_64-cortexa9-vfpv3-toolchain-5.0.sh -y

# Install Conan
RUN pip install -q conan

# Update PATH and create src dir
ENV PATH /usr/local/oecore-x86_64/sysroots/x86_64-nilrtsdk-linux/usr/bin/arm-nilrt-linux-gnueabi/:${PATH}
RUN mkdir src