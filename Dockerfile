FROM dylanmei/mtail:v3.0.0-rc47

COPY ./entrypoint.sh /entrypoint.sh
RUN mkdir /etc/mtail && chmod +x /entrypoint.sh
ENV LOGFILE=/var/log/messages
WORKDIR /
USER root
EXPOSE 3903

ENTRYPOINT ["/entrypoint.sh"]
