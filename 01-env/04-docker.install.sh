## Master server ,first need to run "chmod +x *.sh" in command line 

#!/bin/sh
# install docker

export _CSAST='ansible -i ./ansible-hosts'

$_CSAST all -m command -a 'yum install -y docker'

## set docker registry
$_CSAST -m copy -a 'src=./docker-daemon.json dest=/etc/docker/daemon.json'
 
## enable and start docker service
$_CSAST all -m command -a 'systemctl enable docker && systemctl start docker'


