FROM homeassistant/home-assistant:latest

RUN apk update && \
	apk add freetds-dev unixodbc-dev \
			g++ gcc unixodbc-dev && \
	pip3 install pyodbc pymssql && \
	rm -rf /var/cache/apk/*
