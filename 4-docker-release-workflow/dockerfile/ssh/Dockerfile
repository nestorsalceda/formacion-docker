FROM debian
MAINTAINER Néstor Salceda <nestor@nestorsalceda.com>

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update
RUN apt-get install -y openssh-server

RUN mkdir /var/run/sshd
RUN echo "root:password" | chpasswd

CMD ["/usr/sbin/sshd", "-D"]
EXPOSE 22
