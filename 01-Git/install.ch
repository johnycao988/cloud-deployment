## Master server 

#!/bin/sh

### step1: install git 
yum install git

### step2: config
git config --global user.name "Johnny Cao"
git config --global user.email  "johnnycao@chinasystems.com"
git config --global credential.helper store

