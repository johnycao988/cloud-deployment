## Master server ,first need to run "chmod +x *.sh" in command line 

#!/bin/sh
## genereate key on master server, login with user: root

ssh-keygen  

## copy public key to each nodes
ssh-copy-id root@192.168.3.101

# ...
 