FROM ubuntu:16.04
RUN apt-get update && apt-get install pciutils build-essential wget python net-tools curl -y && rm -rf /var/lib/apt/lists/*
#ADD . /opt
WORKDIR /opt
RUN  wget http://gwan.com/archives/gwan_linux64-bit.tar.bz2
RUN  tar -xjf gwan_linux64-bit.tar.bz2; cd gwan_linux64-bit
RUN  mv gwan_linux64-bit gwan
RUN chown -R www-data:www-data *
WORKDIR /opt/gwan
RUN ln -s "/opt/gwan/0.0.0.0:8080/#0.0.0.0/www" /opt/www
RUN ln -s "/opt/gwan/0.0.0.0:8080/#0.0.0.0/csp" /opt/csp
RUN chown -h www-data:www-data /opt/www \
    && chown -h www-data:www-data /opt/csp
EXPOSE 8080
USER www-data
CMD [ "/opt/gwan/gwan" ]
