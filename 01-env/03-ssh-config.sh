## Node server ,first need to run "chmod +x 3-ssh.sh" in command line 

#!/bin/sh
## genereate key on master server, login with user: root
ssh-keygen 

## copy public key to each
ssh-copy-id root@ root@10.39.107.140 
ssh-copy-id root@ root@10.39.107.124 
ssh-copy-id root@ root@10.39.101.226 
# ...
 