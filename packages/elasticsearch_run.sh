#!/bin/bash
#
# To run elasticsearch. Separated from elasticsearch.sh
# 
# To run this script in Codeship, add the following
# command to your project's test setup command:
# \curl -sSL https://raw.githubusercontent.com/matusmarcin/scripts/master/packages/elasticsearch_run.sh | bash -s
# 
# Make sure to use the exact parameters you want for ElasticSearch and give it enough sleep time to properly start up
nohup bash -c "${ELASTICSEARCH_DIR}/bin/elasticsearch 2>&1" &
sleep "${ELASTICSEARCH_WAIT_TIME}"