FROM ubuntu:latest
USER root
RUN apt-get update && apt-get -y install cron 
COPY code.sh /etc/cron.d/code.sh
COPY cronjob.sh /etc/cron.d/cronjob.sh
RUN chmod 0644 /etc/cron.d/cronjob.sh
RUN apt-get update && apt-get -y install  apt-transport-https  && apt-get -y install curl 
RUN curl -LO https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl
RUN chmod +x ./kubectl
RUN mv ./kubectl /usr/local/bin
RUN crontab /etc/cron.d/cronjob.sh
