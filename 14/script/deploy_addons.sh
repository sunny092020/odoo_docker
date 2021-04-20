#!/bin/bash

set -e

ODOO_PATH='/opt/odoo/sources/odoo/'
docker cp $1 14_odoo_1:$ODOO_PATH/addons/
