#set up python django ENV

#Prepre the OS
FROM resin/rpi-raspbian:jessie
MAINTAINER Carl Luo <luohuazju@gmail.com>

ENV DEBIAN_FRONTEND noninteractive
RUN echo "deb http://mirrordirector.raspbian.org/raspbian/ jessie main contrib non-free rpi\n\
deb-src http://archive.raspbian.org/raspbian/ jessie main contrib non-free rpi\n\
" > /etc/apt/sources.list
RUN apt-get -y update
RUN apt-get -y dist-upgrade




#start the application
#EXPOSE  2121 30000-30040
#RUN     mkdir -p /app/
#ADD     start.sh /app/
#WORKDIR /app/
#CMD	[ "./start.sh" ]