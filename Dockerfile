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
RUN mkdir -p /usr/lib/jvm && \ 
	cd /usr/lib/jvm && \
	wget -c http://download.oracle.com/otn-pub/java/jdk/8u112-b15/jdk-8u112-linux-x64.tar.gz --no-cookies --header "Cookie: oraclelicense=accept-securebackup-cookie" && \
	tar -xvf jdk-8u112-linux-x64.tar.gz && \
	rm -f jdk-8u112-linux-x64.tar.gz && \
	sudo ln -s jdk1.8.0_112 java-8 && \
	cd ~ && \ 
	sed -i '$a export JAVA_HOME=/usr/lib/jvm/java-8 \
			export JRE_HOME=${JAVA_HOME}/jre \
			export CLASSPATH=.:${JAVA_HOME}/lib:${JRE_HOME}/lib \
			export PATH=${JAVA_HOME}/bin:$PATH' .bashrc
ENV JAVA_HOME /usr/lib/jvm/java-8
RUN apt-get install scala -y
EXPOSE 80
