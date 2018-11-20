FROM homeassistant/home-assistant:latest

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
        freetds-dev unixodbc-dev unixodbc-bin \
        mesa-va-drivers va-driver-all vainfo && \
    pip3 install pyodbc pymssql \
        opencv-python && \
    apt-get -y --purge autoremove && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
