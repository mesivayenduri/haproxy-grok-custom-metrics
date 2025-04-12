FROM haproxy:3.0

USER root

RUN apt-get update && \
    apt-get install -y rsyslog && \
    mkdir -p /app/haproxy

RUN apt-get install -y curl
RUN apt-get install -y wget
RUN apt-get install -y iproute2

COPY haproxy.cfg /usr/local/etc/haproxy/haproxy.cfg
COPY rsyslog.conf /etc/rsyslog.conf
COPY start.sh /start.sh

RUN chmod +x /start.sh && chmod 777 /app/haproxy

EXPOSE 80

CMD ["/start.sh"]


# NODEPORT 
# minikube service haproxy-service --url -n development
# minikube service grok-exporter --url -n development