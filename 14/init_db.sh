#!/bin/bash

docker exec \
  --interactive \
  --tty \
  odoo-docker_odoo_1 \
  /opt/odoo/sources/odoo/odoo-bin \
    -i base \
    --stop-after-init \
    --db_host=172.18.0.2 \
    --db_user odoo \
    --db_password odoo \
    --database odoo \
    --without-demo=all
