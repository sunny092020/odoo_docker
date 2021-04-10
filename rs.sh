#!/bin/bash

rsync -avz --exclude '.git' --exclude 'node_modules' -e "ssh -i odoo.pem" 14 ubuntu@odoo:/home/ubuntu
ssh  -t -i odoo.pem ubuntu@odoo 'cd /home/ubuntu/14 && docker-compose up --build'
