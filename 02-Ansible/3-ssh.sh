## Node server ,first need to run "chmod +x 2-install.sh" in command line 

#!/bin/sh
## genereate key on master server, login with user: ansible
ssh-keygen 
ssh-agent bash 
ssh-add ~/.ssh/id_rsa 

echo "Successfully genereate ssh kesy for user: ansible" 