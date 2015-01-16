FROM nginx
ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update -qq && \
  apt-get -y install curl && \
  rm -rf /var/lib/apt/lists/*

ENV CONSUL_TEMPLATE_URL https://github.com/hashicorp/consul-template/releases/download/v0.5.1/consul-template_0.5.1_linux_amd64.tar.gz

RUN curl -L $CONSUL_TEMPLATE_URL | tar -C /usr/local/bin --strip-components 1 -zxf -

RUN rm -v /etc/nginx/conf.d/*

COPY nginx-app.conf /etc/consul-templates/nginx-app.conf
COPY start.sh /start.sh
COPY restart_nginx.sh /restart_nginx.sh

CMD /start.sh
