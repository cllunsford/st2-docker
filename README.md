st2 environment using st2 docker images from hub (+ rabbitmq, mongodb).

stackstorm provides docker and vagrant all-in-one environments for dev and test.  This setup is meant to mimic a 'production' docker setup using the official st2 docker images.

# Usage
```
# Boot the environment
docker-compose build
./up.sh

# Register core packs
docker exec -it st2docker_rules_1 "PYTHONPATH=/opt/stackstorm/src/st2common:/opt/stackstorm/src/st2reactor:/opt/stackstorm/src/st2actions /opt/stackstorm/src/virtualenv/bin/python /opt/stackstorm/src/st2common/bin/st2-register-content --config-file /etc/st2/st2.conf --register-all"

# Connect (replace ip with your docker host)
http://192.168.99.100:8080 (testu/testp)  # st2 web ui
http://192.168.99.100:15672 (guest/guest) # rabbitmq management console

export ST2_CONFIG_FILE=$(pwd)/config
st2 action list
```

`docker-compose up` doesn't give rabbitmq enough time to start before services attempt to connect. `up.sh` gives the rabbitmq and mongodb services a head start on the stackstorm cluster.

Creates user `testu / testp` by default.  Update st2auth/htpasswd to override.

Default packs (core, packs, linux) are normally moved from src/contrib to /opt/stackstorm/packs by yum/deb install scripts.  Here, I am wrapping the docker containers with steps to do this at build time until I can figure out where the official Dockerfiles are and offer a PR.

# TODO

 * -Add integration packs-
 * Allow multiple pack paths to support bind mounts along with default packs easily
 * Remove credentials from sample config
 * Secure mongodb
 * Secure rabbitmq
 * Add sample target host with keypair
 * terraform config for ecs task / service configuration
 * packs.install && packs.load not working for st2contrib
