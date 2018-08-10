FROM homeassistant/home-assistant:latest

RUN apt-get update && \
    apt-get install -y freetds-dev unixodbc-dev unixodbc-bin && \
    pip3 install pyodbc pymssql
