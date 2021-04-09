#!/bin/bash

rm -rf odoo.tar.gz
cd 14
tar -zcvf ./odoo.tar.gz --exclude .git --exclude "*.log" odoo

cd ../
docker build --rm -t odoo ./14
