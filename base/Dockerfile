FROM debian:latest
MAINTAINER Adam Wilmore ajfwil.spam@gmail.com

# Update sources.ist
COPY artefacts/etc/apt/sources.list /etc/apt/sources.list

# Get packages first, including locales
RUN apt-get update && apt-get install -y \
  locales \
  curl \
  wget \
  less

# Set TZ and Locale stuff
RUN cp -p /usr/share/zoneinfo/Australia/Sydney /etc/localtime && \
  locale-gen en_US en_US.UTF-8 en_AU en_AU.UTF-8 && \
  dpkg-reconfigure locales

# Tweak bashrc
RUN echo "export PS1='\[\e[1;32m\]\u@\w$>>\[\e[0m\] '" >> /root/.bashrc && \
  echo "export TERM=screen" >> /root/.bashrc

# Update environment
RUN echo "TZ=\"Australia/Sydney\"" >> /etc/environment && \
  echo "export TZ=\"Australia/Sydney\"" >> /etc/profile

# Clean up
RUN rm -rf /tmp/* && \
  apt-get clean autoclean && \
  apt-get autoremove -y && \
  rm -rf /var/lib/{apt,dpkg,cache,log}/

