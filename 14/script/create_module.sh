#!/bin/bash

set -e

ODOO_PATH='/opt/odoo/sources/odoo/'
docker exec 14_odoo_1 sh -c 'cd '$ODOO_PATH' && ./odoo-bin scaffold '$1' addons'
mkdir -p $2/$1
docker cp 14_odoo_1:$ODOO_PATH/addons/$1 $2
docker exec 14_odoo_1 sh -c 'rm -rf '$ODOO_PATH'/addons/'$1
