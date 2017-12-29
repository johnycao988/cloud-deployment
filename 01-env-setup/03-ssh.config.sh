## Master server ,first need to run "chmod +x *.sh" in command line 

#!/bin/sh
## genereate key on master server, login with user: root

ssh-keygen 

## copy public key to each nodes
ssh-copy-id root@10.39.107.140 
ssh-copy-id root@10.39.107.124 
ssh-copy-id root@10.39.101.226 
# ...
 