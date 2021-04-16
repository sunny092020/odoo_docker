#!/bin/bash

set -e

docker exec 14_odoo_1 sh -c 'cd /opt/odoo/sources/odoo/ && ./odoo-bin scaffold '$1' addons'
mkdir -p $2/$1
docker cp 14_odoo_1:/opt/odoo/sources/odoo/addons/$1 $2
docker exec 14_odoo_1 sh -c 'rm -rf /opt/odoo/sources/odoo/addons/'$1
