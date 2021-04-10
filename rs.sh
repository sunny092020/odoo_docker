#!/bin/bash

rm -rf 14/odoo.tar.gz
tar -zcvf ./14/odoo.tar.gz --exclude .git --exclude "*.log" odoo

rsync -avz --exclude '.git' --exclude 'node_modules' -e "ssh -i odoo.pem" 14 ubuntu@odoo:/home/ubuntu
ssh  -t -i odoo.pem ubuntu@odoo 'cd /home/ubuntu/14 && docker-compose up --build'
