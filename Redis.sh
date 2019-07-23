###############################################################################
# This Script has been return to install redis server and print the output of INFO command

#Step 1 : Install redis & start the service
#Step 2 : output of redis-cli info
###############################################################################

#!/bin/bash
printf "\033[1;32mUpdating OS to latest version\033[0m\n"
sudo apt-get update
printf "\033[1;32mInstalling redis server\033[0m\n"
sudo apt-get -y install redis-server
sudo systemctl enable redis-server.service
printf "\033[1;32m redis serever info\033[0m\n"
redis-cli info
printf "\033[1;32mValidation of services using redis cli\033[0m\n"
redis-cli Ping
