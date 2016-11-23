FROM kalilinux/kali-linux-docker
MAINTAINER nicolas.bonnet@maisondeco.com

RUN echo "deb http://http.kali.org/kali kali-rolling main contrib non-free" > /etc/apt/sources.list && \
echo "deb-src http://http.kali.org/kali kali-rolling main contrib non-free" >> /etc/apt/sources.list
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get -y update && apt-get -y dist-upgrade && apt-get clean

#install tools
#password crack
RUN apt-get install kali-linux-pwtools -y
#web exploit
RUN apt-get install kali-linux-web -y
#top 10 of exploit tools
RUN apt-get install kali-linux-top10 -y

CMD ["/bin/bash"]
