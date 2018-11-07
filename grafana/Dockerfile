FROM grafana/grafana:5.3.2

USER root
RUN apt-get update && apt-get install -y curl gettext-base
####RUN apt-get update && apt-get install -y --no-install-recommends apt-utils
###RUN apt-get install -y curl gettext-base
###necessario per le cartelle?
USER grafana

WORKDIR /etc/grafana
COPY datasources ./datasources

WORKDIR /app
COPY entrypoint.sh ./
USER root
RUN chmod u+x entrypoint.sh
###USER grafana

ENTRYPOINT ["/app/entrypoint.sh"]
