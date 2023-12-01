#!/bin/bash
echo "Running volume permissions sidecar.sh"
adduser -uid 8983 --disabled-password --gecos "" solr 
chown -R 8983:8983 /var/solr/
echo "Permissions changed"
exit 0