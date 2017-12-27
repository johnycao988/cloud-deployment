## Master server ,first need to run "chmod +x *.sh" in command line 

#!/bin/sh
# install docker

export _CSAST='ansible -i ./ansible-hosts all -m'

$_CSAST command -a 'yum install -y docker'

## set docker registry
$_CSAST copy -a 'src=./docker-daemon.json dest=/etc/docker/daemon.json'
 
## enable and start docker service
$_CSAST command -a 'systemctl enable docker' 
$_CSAST command -a 'systemctl start docker'


