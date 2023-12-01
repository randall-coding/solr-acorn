#!/bin/bash
acorn build -t ghcr.io/randall-coding/acorn/solr && \
acorn push ghcr.io/randall-coding/acorn/solr && \
acorn run -n solr --memory=2Gi -v solr-data,size=5Gi ghcr.io/randall-coding/acorn/solr