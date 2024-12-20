# Watt Prometheus Demo

Open a terminal, then:

```bash

docker compose up

```

Use `-d` to start detached from terminal

Then Open with a browser: `http://127.0.0.1:9090/` to see Prometheus UI

To see some data you can use autocannon, e.g.:

```bash
autocannon -c 10 -d 10 http://127.0.0.1:3042/next

```

Then you can query Prometheus UI, e.g.:

```
http_request_summary_seconds{serviceId="next"}
```
