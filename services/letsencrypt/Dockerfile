FROM certbot/certbot:latest

# Install dependencies if necessary
RUN apk update && \
    apk add --no-cache bash curl

# Create a script for renewing certificates
RUN echo '#!/bin/bash\n\
certbot renew --noninteractive\n\
cp /etc/letsencrypt/live/${YOURDOMAIN}/fullchain.pem /secrets/certificate.pem\n\
cp /etc/letsencrypt/live/${YOURDOMAIN}/privkey.pem /secrets/certificate.key' \
> /usr/local/bin/renew_certs.sh

# Make the script executable
RUN chmod +x /usr/local/bin/renew_certs.sh

# Set up cron to automatically renew certificates
RUN echo "0 0 * * * /usr/local/bin/renew_certs.sh >> /var/log/cron.log 2>&1" > /etc/crontabs/root

# Start cron
CMD ["crond", "-f"]