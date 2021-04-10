#!/bin/bash

ssh  -t -i odoo.pem ubuntu@odoo 'rm -rf /home/ubuntu/bitnami-docker-odoo'
ssh  -t -i odoo.pem ubuntu@odoo 'cat /dev/null > ~/.bash_history && history -c && exit'
