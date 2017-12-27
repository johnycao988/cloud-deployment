## Node server ,first need to run "chmod +x 3-ssh.sh" in command line 

#!/bin/sh
## genereate key on master server, login with user: ansible
ssh-keygen || ssh-agent bash || ssh-add ~/.ssh/id_rsa 

echo "Successfully genereate ssh kesy for user: ansible"

## copy public key to each
scp ~/.ssh/id_rsa.pub root@10.39.107.140:/home/ansible/.ssh/master.id_rsa.pub 
scp ~/.ssh/id_rsa.pub root@10.39.107.124:/home/ansible/.ssh/master.id_rsa.pub
scp ~/.ssh/id_rsa.pub root@10.39.101.226:/home/ansible/.ssh/master.id_rsa.pub

echo "Successfully copy  ssh kesy to nodes"