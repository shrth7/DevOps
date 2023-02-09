FROM httpd:2.4

RUN apt-get update && \
    apt-get install -y apache2
# Expose port 80 for incoming traffic
EXPOSE 80
# Start Apache HTTP Server when the container starts
CMD ["apachectl", "-D", "FOREGROUND"]



# FROM ubuntu 
# RUN apt update 
# RUN apt install –y apache2 
# RUN apt install –y apache2-utils 
# RUN apt clean 
# EXPOSE 80
# CMD [“apache2ctl”, “-D”, “FOREGROUND”]
