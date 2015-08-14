st2 environment using st2 docker images from hub (+ rabbitmq, mongodb).

stackstorm provides docker and vagrant all-in-one environments for dev and test.  This setup is meant to mimic a 'production' docker setup using the official st2 docker images.

# Usage
```
# Boot the environment
docker-compose build
./up.sh
```

`docker-compose up` doesn't give rabbitmq enough time to start before services attempt to connect. `up.sh` gives the rabbitmq and mongodb services a head start on the stackstorm cluster.

Creates user `testu / testp` by default.  Update st2auth/htpasswd to override.

Use st2cli or connect to http://192.168.99.100:8080/ for web ui (or replace with your docker host ip).

Current Status: everything starts up, but no default packs are available (so you can't really do much).

# TODO

 * Add integration packs
 * Remove credentials from sample config
 * Secure mongodb
 * Secure rabbitmq
 * Add sample target host with keypair
 * terraform config for ecs task / service configuration
