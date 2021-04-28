FROM ubuntu:20.04

RUN apt update
RUN apt install -y python3
RUN apt install -y cron
RUN mkdir /commondata
ADD ./crontest.py /crontest.py
ADD ./docker-crontab /docker-crontab
RUN chmod 644 /docker-crontab
#Create a log file
RUN touch /var/log/cron.log
#Install cronjob
RUN crontab /docker-crontab

WORKDIR /

# Run the command on container startup. The tail command is mandatory to keep the container running.
CMD cron && tail -f /var/log/cron.log