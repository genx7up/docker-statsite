docker-statsite
===============

To build,

docker build --rm=true -t="statsite" .

docker run -v /docker/data/temp:/data --name temp -it statsite /bin/bash

bash /run.sh

To install,

rpm -Uvh /data/RPMS/x86_64/statsite-0.7.0-1.el6.x86_64.rpm

