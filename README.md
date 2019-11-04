# filebeat-docker-elk

The repo is for building a filebeat container to forward the docker logs of the other containers running on the same VM to ELK.
In Kibana, all the logs can be filtered by the container's name

### Run ELK
```
docker run -d -p 5601:5601 -p 9200:9200 -p 5044:5044 --ulimit nofile=65535:65535 --name elk sebp/elk
```
### Run Filebeat
Assuming the existing ELK docker container is running and the Logstash is listening to port 5044

* Clone this git repo to get the files
* Run the following command to build the docker image
```
docker build . -t maodou/docker-log-filebeat:1.0.0
```
* Run the following command to start the Filebeat docker container
```
./docker_run_filebeat.sh
```
