FROM jdziat/base
LABEL maintainer="jdziat"
# Never prompts the user for choices on installation/configuration of packages
ENV DEBIAN_FRONTEND noninteractive
ENV TERM linux

# Airflow
ARG AIRFLOW_VERSION=1.9.0
# Install Airflow with crypto,celery,postgres,hive,jdbc modules.
# list of all available packages: https://airflow.incubator.apache.org/installation.html#extra-packages
# RUN apt-get install -y python3 python3-pip vim \
#  && \
#  pip3 install "apache-airflow[crypto,celery,postgres,hive,jdbc]"===${AIRFLOW_VERSION}
RUN apt-get install -y python3 python3-pip postgresql-client netcat \ 
    && pip3 install Cython \
    && pip3 install pytz \
    && pip3 install pyOpenSSL \
    && pip3 install ndg-httpsclient \
    && pip3 install psycopg2-binary \
    && pip3 install pyasn1 \
    && pip3 install apache-airflow[crypto,celery,postgres,hive,jdbc]==${AIRFLOW_VERSION} \
    && pip3 install celery[redis]==4.1.1 