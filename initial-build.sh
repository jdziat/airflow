#!/bin/bash

mkdir ./volumes

cd ./base
echo "Building base container..."
docker build -t jdziat/base ./
cd ../airflow
echo "Building airflow container..."
docker build -t jdziat/airflow ./
cd ../airflow_config
echo "Building airflow_config container..."
docker build -t jdziat/airflow_config ./
cd ../

exit 0