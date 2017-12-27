## Master server ,first need to run "chmod +x install.sh" in command line 

#!/bin/sh

### step1: install git 
yum install git

### step2: config
git config --global user.name "Johnny Cao"
git config --global user.email  "johnnycao@chinasystems.com"
## No password for git commit
git config --global credential.helper store

## Not commit after change file access.
git config core.fileMode false

