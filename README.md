# zabbix-graphite-docker

What is this

- To deploy Zabbix server Zabbix 3.2.6, Mariadb, Graphite and Grafana containers with Docker Compose. This is aimed for quick and easy deployment.

- Compose's file is written by v3.1 format. I was inspired by: https://github.com/monitoringartist/zabbix-xxl

System requirements

- Docker Engineer: docker-ce-17.03.1

- Docker compose: docker-compose version 1.13.0

How to use

1. Create a swarm and add nodes to the swarm

2. Download docker-compose.yml

3. Deploy a multi-container composed application is to use docker-compose.yml

```
docker stack deploy --compose-file docker-compose.yml my_app
```
Check status
```
#docker stack services my_app
ID            NAME                   MODE        REPLICAS  IMAGE
0mzkvnonnikc  monitor_graphite       replicated  1/1       hopsoft/graphite-statsd:latest
6p1w2rdhz19c  monitor_zabbix-server  replicated  1/1       thangnt/zabbix-customize:latest
7v785n0pnbml  monitor_grafana        replicated  1/1       monitoringartist/grafana-xxl:latest
wqfvzqpdv3qu  monitor_zabbix-db      replicated  1/1       monitoringartist/zabbix-db-mariadb:latest
```

Finally, you can access by own browser http://<host_ip>/ .