# HAProxy wrapper

Allows to setup new backend servers via environment variable.

# Example of use

```bash
docker run --rm -e SERVERS=rest --link rest:rest gangtetris/haproxy:1.6
```

