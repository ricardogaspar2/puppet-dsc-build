FROM ubuntu:16.04

WORKDIR /root

# Update packages
RUN apt-get clean && apt-get update

# Install locale to build DSC modules
RUN apt-get install locales
RUN locale-gen en_US.UTF-8
# Set locale environment variables
ENV LANG=en_US.UTF-8
ENV LANGUAGE=en_US.UTF-8
ENV LC_ALL=en_US.UTF-8

# Essential packages 
RUN apt-get install git ruby ruby-dev build-essential libicu-dev libz-dev -y
RUN gem install bundler
RUN gem install semantic_puppet

# Non-essential but useful
RUN apt-get install vim tree curl -y

# Clone puppetlabs-dsc repository
RUN git clone https://github.com/puppetlabs/puppetlabs-dsc.git
