FROM awilmore/debianbase:latest
MAINTAINER Adam Wilmore ajfwil.spam@gmail.com

# Get packages first, including locales
RUN apt-get update && \
  apt-get install -y python

# Copy whoami service script
COPY artefacts/root/services/whoami.sh /root/services/whoami.sh

# Set simple web folder - index.html and build.txt
COPY artefacts/root/www /root/www

# Clean up
RUN rm -rf /tmp/* && \
  apt-get clean autoclean && \
  apt-get autoremove -y && \
  rm -rf /var/lib/{apt,dpkg,cache,log}/

# Expose port
EXPOSE 8000

# Container initialiser
CMD ["/root/services/whoami.sh"]
