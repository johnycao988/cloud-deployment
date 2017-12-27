## Master and Node servers ,first need to run "chmod +x 2-createuser.sh" in command line 

#!/bin/sh

### step1: create user:ansible on master and all node servers
adduser ansible || useradd -G root ansible  || su - ansible -c "mkdir -p ~/.ssh" ||echo "Successfully create user: ansible"





 