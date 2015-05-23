FROM kalilinux/kali
MAINTAINER muts@kali.org
CMD ["/bin/bash"] 

RUN echo "deb http://http.kali.org/kali kali main contrib non-free" > /etc/apt/sources.list && \
echo "deb-src http://http.kali.org/kali kali main contrib non-free" >> /etc/apt/sources.list && \
echo "deb http://security.kali.org/kali-security kali/updates main contrib non-free" >> /etc/apt/sources.list && \
echo "deb-src http://security.kali.org/kali-security kali/updates main contrib non-free" >> /etc/apt/sources.list
RUN apt-get update
