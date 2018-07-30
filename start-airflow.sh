#!/bin/bash

docker-compose -f docker-compose-executor.yml up -d --scale worker=2
