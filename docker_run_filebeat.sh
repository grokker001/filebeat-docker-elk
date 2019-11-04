docker run -d -v /var/lib/docker/containers:/usr/share/dockerlogs/data:ro -v /var/run/docker.sock:/var/run/docker.sock --network host -it --name filebeat maodou/docker-log-filebeat:1.0.0
