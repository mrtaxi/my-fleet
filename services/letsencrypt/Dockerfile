FROM certbot/certbot:latest


RUN apk update && \
    apk add --no-cache bash curl


COPY renew_certs.sh /usr/local/bin/renew_certs.sh


RUN chmod +x /usr/local/bin/renew_certs.sh


RUN echo "0 0 * * * /usr/local/bin/renew_certs.sh >> /var/log/cron.log 2>&1" > /etc/crontabs/root


CMD ["crond", "-f"]