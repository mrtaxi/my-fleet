#!/bin/bash

certbot renew --noninteractive


cp /etc/letsencrypt/live/${YOURDOMAIN}/fullchain.pem /secrets/certificate.pem
cp /etc/letsencrypt/live/${YOURDOMAIN}/privkey.pem /secrets/certificate.key
