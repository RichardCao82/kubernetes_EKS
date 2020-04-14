#!/bin/sh

#docker run --name test --env-file env_file -p 80:8080 -it jwt-api-test bash
docker run --name test --env-file env_file -p 80:8080 -d jwt-api-test bash
