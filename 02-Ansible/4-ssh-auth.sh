## Node server ,first need to run "chmod +x 4-ssh-auth.sh" in command line 

#!/bin/sh
## append ssh key to authorized_keys on master and eche nodes

su - ansible -c "cat ~/.ssh/master.id_rsa.pub >> ~/.ssh/authorized_keys" || chmod 600 /home/ansible/.ssh/authorized_keys 