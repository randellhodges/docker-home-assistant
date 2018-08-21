FROM homeassistant/home-assistant:latest

RUN apt-get update && \
    apt-get install -y freetds-dev unixodbc-dev unixodbc-bin \
        mesa-va-drivers va-driver-all vainfo && \
    pip3 install pyodbc pymssql && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
