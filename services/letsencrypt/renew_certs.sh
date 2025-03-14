#!/bin/bash

certbot renew --noninteractive

cp /etc/letsencrypt/live/yourdomain.com/fullchain.pem /secrets/certificate.pem
cp /etc/letsencrypt/live/yourdomain.com/privkey.pem /secrets/certificate.key

