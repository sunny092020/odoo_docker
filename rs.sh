#!/bin/bash

rsync -avz --exclude '.git' --exclude 'node_modules' -e "ssh -i odoo_test.pem" bitnami-docker-odoo ubuntu@3.0.181.88:/home/ubuntu
ssh  -t -i odoo_test.pem ubuntu@3.0.181.88 'cd /home/ubuntu/bitnami-docker-odoo && docker-compose up --build -d'
