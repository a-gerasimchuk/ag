#!/bin/bash

echo 'Start Shopware Bakup....'
date

mysqldump bitnami_shopware > $HOME/bash_scripts/db_dump.sql.$( date +%d-%m-%y )

cd /opt/bitnami/apps/shopware/ && tar -czf "/home/bitnami/bash_scripts/shopware_$( date +%d_%m_%y )_archiv.tar.gz" htdocs/

echo 'Done........'
date

exit 0

