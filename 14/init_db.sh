#!/bin/bash

docker exec \
  --interactive \
  --tty \
  14_odoo_1 \
  /opt/odoo/sources/odoo/odoo-bin \
    -i base \
    --stop-after-init \
    --db_host=172.17.0.1 \
    --db_user odoo \
    --db_password odoo \
    --database odoo \
    --without-demo=all
