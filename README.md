# Airflow Setup
## Overview


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


## References


## Future Enhancements

- ETCD implementation for cleaner deployments
- Implement Docker Swarm
- Condense into a single container
    -  Seperated them for faster iteration when starting out.
- Services Healthchecks
    - Due to time i did not implement health checks across all services
