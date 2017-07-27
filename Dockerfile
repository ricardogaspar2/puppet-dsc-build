FROM ubuntu:16.04

WORKDIR /root

# Update packeges
RUN apt-get clean && apt-get update

# Install and set locale to build DSC modules
RUN apt-get install locales
RUN locale-gen en_US.UTF-8
RUN export LANG=en_US.UTF-8
RUN export LANGUAGE=en_US.UTF-8
RUN export LC_ALL=en_US.UTF-8

# Essential packages 
RUN apt-get install git ruby ruby-dev build-essential libicu-dev libz-dev -y
RUN gem install bundler
RUN gem install semantic_puppet

# Non-essential but useful
RUN apt-get install vim tree curl -y

# Clone puppetlabs-dsc repository
RUN git clone https://github.com/puppetlabs/puppetlabs-dsc.git