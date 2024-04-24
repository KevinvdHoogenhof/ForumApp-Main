# Local load testing

Local load testing setup with K6, Grafana and InfluxDB.

## Commands to perform load testing

```docker compose up -d influxdb grafana``` (in this folder)

```docker compose run k6 run /scripts/script.js```

## Results

To view the results of the load test you can go to the Grafana dashboard: http://localhost:3000/d/k6/k6-load-testing-results 

#### Source

https://github.com/luketn/docker-k6-grafana-influxdb/blob/master/README.md
