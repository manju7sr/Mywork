####################################################################
# The below shell script has been return to install the Docker Engine,Elasticsearch & print the health of single node cluster

# Below are the 4 steps

#Step 1 : Installed Docker Engine & Validated Docker status
#Step 2 : pulled Docker Image for elastic search from the repositry and installed it
#Step 3 : Run Elasticsearch as single node cluster
#Step 4 : Print the health of the cluster
###################################################################

#!/bin/bash

printf "\033[1;32mUpdating OS to latest version\033[0m\n"
sudo apt-get update
sleep 5s
printf "\033[1;32mInstalling Docker\033[0m\n"
sudo apt -y install docker.io
sleep 5s
printf "\033[1;32mStart Docker\033[0m\n"
sudo systemctl start docker
sleep 5s
printf "\033[1;32mEnable Docker\033[0m\n"
sudo systemctl enable docker
sleep 5s
printf "\033[1;32mInstall Certificates\033[0m\n"
sudo apt-get -y install apt-transport-https ca-certificates curl software-properties-common
sleep 5s
printf "\033[1;32mDownload & install Docker image of elastic search\033[0m\n"
docker pull docker.elastic.co/elasticsearch/elasticsearch:7.2.0
docker run -d -p 9200:9200 -p 9300:9300 -e "discovery.type=single-node" docker.elastic.co/elasticsearch/elasticsearch:7.2.0
sleep 20s
printf "\033[1;32mHealth Status\033[0m\n"
curl http://127.0.0.1:9200/_cat/health
