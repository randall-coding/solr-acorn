#!/bin/bash
echo "Running volume permissions sidecar.sh"
adduser -uid 8983 --disabled-password --gecos "" solr 
chown -R 8983:8983 /prometheus
echo "Permissions changed"
exit 0