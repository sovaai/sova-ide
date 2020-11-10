#!/usr/bin/env bash
DIRNAME=`dirname $0` &&
rm -rf ${DIRNAME}/../var/dltmp/templates &&
mkdir ${DIRNAME}/../var/dltmp/templates &&
cp $2 ${DIRNAME}/../var/dltmp/templates/ &&
docker-compose exec processor_http python3 tools/import_templates.py -t http://sova_backend_gateway_http:${BACKEND_GATEWAY_PORT:-5000} --profile-name $1 /dltmp/templates
