#!/usr/bin/env bash
DIRNAME=`dirname $0` &&
rm -rf ${DIRNAME}/../var/dltmp/dicts &&
mkdir ${DIRNAME}/../var/dltmp/dicts &&
cp $2/* ${DIRNAME}/../var/dltmp/dicts/ &&
docker-compose exec processor_http python3 tools/import_dictionaries.py -t http://sova_backend_gateway_http:${BACKEND_GATEWAY_PORT:-5000} --profile-name $1 /dltmp/dicts
