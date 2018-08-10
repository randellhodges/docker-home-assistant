FROM homeassistant/home-assistant:latest

#HEALTHCHECK --interval=1m --timeout=3s \ CMD curl -f http://localhost:8123/ || exit 1

RUN apt-get update && \
    apt-get install -y freetds-dev unixodbc-dev unixodbc-bin && \
    pip3 install pyodbc pymssql
