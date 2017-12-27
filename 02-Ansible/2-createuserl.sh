## Master server ,first need to run "chmod +x 2-install.sh" in command line 

#!/bin/sh

### step1: create user:ansible
adduser ansible
useradd -G root ansible 
echo "Successfully create user ansible"
 