# Airflow Setup
## Overview
To implement a scalable airflow configuration with worker processes and good design choices.

## Instructions
- Install Docker/Docker-compose
- Clone the repo to the desired location
    - git clone https://github.com/jdziat/airflow.git
- Build containers and have them in your local image repo
    - ./initial-build.sh
- Start airflow
    - ./start-airflow.sh
    - docker-compose -f docker-compose-executor.yml up -d --scale worker=2
        - Increase the number of workers or implement the Resources/replicas within the docker-compose file.
- Open Web UI
    - http://localhost:8080

## Design Decisions 
- Confd + Environment Variables
    - Best practices across the examples seem to indicate that environment variables for this software is the preferred deployment method
    - Local yaml file for deployment config via confd with it preferring environment variables before the yaml settings. Has a list of default settings that will be supplied if none are provided.
- Postgres
    - Default unencypted password/details. Once etcd or similar is deployed switch over to that instead with encrypted passwords.
- Redis
    - Insecure redis connection just for the time being.
- Static worker scaling
    - Out of the box the compose section only contains the references necessary to start implementing a dynamic scaling architecture.
- Docker Only
    - Requested framework toolset


## References
- Airflow
    - https://airflow.apache.org/
- Confd
    - https://github.com/kelseyhightower/confd
- Docker Compose v3
    - https://docs.docker.com/compose/compose-file/
- Ansible Airflow Example
    - https://github.com/idealista/airflow-role
- Docker Airflow Example
    - https://github.com/puckel/docker-airflow



## Future Enhancements

- ETCD implementation for cleaner deployments
- Implement Docker Swarm
- Condense into a single container
    -  Seperated them for faster iteration when starting out.
- Services Healthchecks
    - Due to time i did not implement health checks across all services
