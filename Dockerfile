FROM homeassistant/home-assistant:latest

RUN     cd /tmp && \
        curl -O https://download.microsoft.com/download/e/4/e/e4e67866-dffd-428c-aac7-8d28ddafb39b/msodbcsql17_17.7.2.1-1_amd64.apk && \
        curl -O https://download.microsoft.com/download/e/4/e/e4e67866-dffd-428c-aac7-8d28ddafb39b/mssql-tools_17.7.1.1-1_amd64.apk && \
        apk add --allow-untrusted msodbcsql17_17.7.2.1-1_amd64.apk && \
        apk add --allow-untrusted mssql-tools_17.7.1.1-1_amd64.apk && \
        rm -rf /tmp/* && \
        rm -rf /var/cache/apk/*
