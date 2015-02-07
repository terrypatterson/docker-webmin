RUN apt-get update && apt-get -y upgrade
RUN apt-get -y install bind9 wget
RUN echo "deb http://download.webmin.com/download/repository sarge contrib" >> /etc/apt/sources.list
RUN echo "deb http://webmin.mirror.somersettechsolutions.co.uk/repository sarge contrib" >> /etc/apt/sources.list
RUN echo "Acquire::GzipIndexes \"false\"; Acquire::CompressionTypes::Order:: \"gz\";" > /etc/apt/apt.conf.d/docker-gzip-indexes
RUN wget http://www.webmin.com/jcameron-key.asc && apt-key add jcameron-key.asc
RUN apt-get update
RUN apt-get -y install webmin && apt-get clean
