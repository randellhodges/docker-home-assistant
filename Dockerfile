FROM homeassistant/home-assistant:latest

RUN apt update && \
    apt install -y --no-install-recommends \
        freetds-dev unixodbc-dev unixodbc-bin \
        mesa-va-drivers va-driver-all vainfo && \
    pip3 install pyodbc pymssql \
        opencv-python && \
    apt -y --purge autoremove && \
    apt clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
