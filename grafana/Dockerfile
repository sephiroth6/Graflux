FROM grafana/grafana:5.3.4

USER root
RUN apt-get update && apt-get install -y curl gettext-base
####RUN apt-get update && apt-get install -y --no-install-recommends apt-utils
###necessario per le cartelle?
USER grafana

WORKDIR /etc/grafana
COPY datasources ./datasources

WORKDIR /app
COPY entrypoint.sh ./
###COPY custom.ini ./conf/
USER root
RUN chmod u+x entrypoint.sh
###USER grafana

ENTRYPOINT ["/app/entrypoint.sh"]
