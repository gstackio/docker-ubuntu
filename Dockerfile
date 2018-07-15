FROM ubuntu:trusty
LABEL "original-author"="Ferran Rodenas <frodenas@gmail.com>" \
      maintainer="Benjamin Gandon" \
      organization="Gstack"

# Install utilities
RUN locale-gen en_US.UTF-8 && \
    echo 'LANG="en_US.UTF-8"' > /etc/default/locale && \
    sed -i 's/# \(.*multiverse$\)/\1/g' /etc/apt/sources.list && \
    apt-get -y -q update && \
    DEBIAN_FRONTEND=noninteractive apt-get -y install -o Dpkg::Options::="--force-confnew" \
    build-essential \
    software-properties-common \
    apt-transport-https \
    curl \
    wget \
    git \
    unzip \
    pwgen

# Set environment variables
ENV HOME /root

# Define working directory
WORKDIR /root

# Define default command
CMD ["bash"]
