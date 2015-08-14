st2 environment using st2 docker images from hub (+ rabbitmq, mongodb).

Use `./up.sh` to build and start.  `docker-compose up` doesn't give rabbitmq enough time to start before services attempt to connect.

Creates user `testu / testp` by default.  Update st2auth/htpasswd to override.

Use st2cli or connect to http://192.168.99.100:3000/ for web ui (or replace with your docker host ip).

Current Status: everything starts up, but no default packs are available (so you can't really do much).

# TODO

 * Add integration packs
 * Remove credentials from sample config
 * Secure mongodb
 * Secure rabbitmq
 * Add sample target host with keypair
