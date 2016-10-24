#Version:0.0.1
FROM ubuntu:14.04
MAINTAINER snow "zxf@ifilmo.com"
RUN apt-get update 
RUN apt-get install wget -y && apt-get install xz-utils
RUN cd /opt && \
	wget https://nodejs.org/dist/v4.4.7/node-v4.4.7-linux-x64.tar.xz && \
	xz -d node-v4.4.7-linux-x64.tar.xz && \ 
	tar -xvf node-v4.4.7-linux-x64.tar && \
	rm -f node-v4.4.7-linux-x64.tar 
RUN ln -s /opt/node-v4.4.7-linux-x64/bin/node /usr/local/sbin/node
RUN ln -s /opt/node-v4.4.7-linux-x64/bin/npm /usr/local/sbin/npm
EXPOSE 80
