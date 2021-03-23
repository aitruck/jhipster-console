#!/bin/bash
docker -v
aws ecr get-login-password --region ap-southeast-1 | docker login --username AWS --password-stdin 540678088154.dkr.ecr.ap-southeast-1.amazonaws.com
docker build -f jhipster-elasticsearch/Dockerfile \
    -t 540678088154.dkr.ecr.ap-southeast-1.amazonaws.com/jhipster-elasticsearch:7.9.2 \
    -t 540678088154.dkr.ecr.ap-southeast-1.amazonaws.com/jhipster-elasticsearch:latest \
    jhipster-elasticsearch
docker push 540678088154.dkr.ecr.ap-southeast-1.amazonaws.com/jhipster-elasticsearch:latest
docker push 540678088154.dkr.ecr.ap-southeast-1.amazonaws.com/jhipster-elasticsearch:7.9.2
docker build -f jhipster-logstash/Dockerfile \
    -t 540678088154.dkr.ecr.ap-southeast-1.amazonaws.com/jhipster-logstash:7.9.2 \
    -t 540678088154.dkr.ecr.ap-southeast-1.amazonaws.com/jhipster-logstash:latest \
    jhipster-logstash
docker push 540678088154.dkr.ecr.ap-southeast-1.amazonaws.com/jhipster-logstash:latest
docker push 540678088154.dkr.ecr.ap-southeast-1.amazonaws.com/jhipster-logstash:7.9.2
docker build -f jhipster-console/Dockerfile \
    -t 540678088154.dkr.ecr.ap-southeast-1.amazonaws.com/jhipster-console:7.9.2 \
    -t 540678088154.dkr.ecr.ap-southeast-1.amazonaws.com/jhipster-console:latest \
    jhipster-console
docker push 540678088154.dkr.ecr.ap-southeast-1.amazonaws.com/jhipster-console:latest
docker push 540678088154.dkr.ecr.ap-southeast-1.amazonaws.com/jhipster-console:7.9.2
docker build -f jhipster-import-dashboards/Dockerfile \
    -t 540678088154.dkr.ecr.ap-southeast-1.amazonaws.com/jhipster-import-dashboards:7.9.2 \
    -t 540678088154.dkr.ecr.ap-southeast-1.amazonaws.com/jhipster-import-dashboards:latest \
    jhipster-import-dashboards
docker push 540678088154.dkr.ecr.ap-southeast-1.amazonaws.com/jhipster-import-dashboards:latest
docker push 540678088154.dkr.ecr.ap-southeast-1.amazonaws.com/jhipster-import-dashboards:7.9.2