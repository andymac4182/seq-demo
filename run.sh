#!/usr/bin/env bash

docker run -d -e ACCEPT_EULA=Y --name=seq -p 5341:80 datalust/seq 
sleep 10s
docker run --net=host --rm datalust/seqcli sample setup -y
docker run --net=host --rm datalust/seqcli sample ingest -y
