#!/bin/bash

docker build -t trashtravel/docker-cron:latest . && docker push trashtravel/docker-cron:latest
