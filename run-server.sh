#!/bin/bash
# Run sonar qube community edition 8.4.2
docker run -d --name sonarqube -e SONAR_ES_BOOTSTRAP_CHECKS_DISABLE=true -p 9000:9000 sonarqube:8.4.2-community
