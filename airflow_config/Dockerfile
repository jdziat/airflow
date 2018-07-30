FROM jdziat/airflow
LABEL maintainer="jdziat"
# Never prompts the user for choices on installation/configuration of packages
ENV DEBIAN_FRONTEND noninteractive
ENV TERM linux

# Airflow
ARG AIRFLOW_HOME=/usr/local/airflow
ADD confd /etc/confd
RUN useradd -ms /bin/bash -d ${AIRFLOW_HOME} airflow
RUN chown -R airflow ${AIRFLOW_HOME}
WORKDIR $AIRFLOW_HOME
RUN confd -onetime -backend="file" /etc/confd/airflow.yaml
RUN chmod 777 /tmp/entrypoint.sh
RUN chown airflow /tmp/entrypoint.sh
RUN chown airflow /tmp/airflow.cfg
EXPOSE 8080 5555 8793

USER airflow
ENTRYPOINT ["/tmp/entrypoint.sh"]
CMD ["webserver"] 