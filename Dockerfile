FROM monitoringartist/zabbix-xxl

RUN set -x \
    && yum install -y gcc openssl-devel vim python-pip tcpdump\
    && pip install --upgrade pip \
    && pip install pyTelegramBotAPI \
    && yum clean all && rm -rf /tmp/*

COPY telegram /usr/local/share/zabbix/alertscripts
COPY slack /usr/local/share/zabbix/alertscripts

