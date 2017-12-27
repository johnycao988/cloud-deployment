## Master server ,first need to run "chmod +x *.sh" in command line 

#!/bin/sh

### step1: install git 
echo "Installing git..."
yum install git

### step2: config
echo "Configing git..."
git config --global user.name "Johnny Cao"
git config --global user.email  "johnnycao@chinasystems.com"
## No password for git commit
git config --global credential.helper store

## Not commit after change file access.
git config core.fileMode false

echo "Successfully install and config git."

