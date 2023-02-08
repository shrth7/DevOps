# Use an existing image as the base image
FROM ubuntu:20.04
# Update the package repository
RUN apt-get update -y
# Install Apache HTTP Server
RUN apt-get install -y apache2
# Expose the default Apache HTTP Server port
EXPOSE 80
# Start the Apache HTTP Server
CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]
