# ReflexionChallenge
The goal of the challenge is to produce a working Docker container that when
executed will list a 4 digit randomly generated file name in the challenge 
directory.

Example output:

 [WARNING]: Unable to parse /etc/ansible/hosts as an inventory source
 [WARNING]: No inventory was parsed, only implicit localhost is available
 [WARNING]: provided hosts list is empty, only localhost is available. Note
that the implicit localhost does not match 'all'

PLAY [localhost] ***************************************************************

TASK [Gathering Facts] *********************************************************
ok: [localhost]

TASK [create /challenge directory] *********************************************
changed: [localhost]

TASK [generate and register random 4 digit number] *****************************
changed: [localhost]

TASK [touch file named value of registered random number] **********************
changed: [localhost]

PLAY RECAP *********************************************************************
localhost                  : ok=4    changed=3    unreachable=0    failed=0

"6691"

Include the revised Dockerfile and playbook.yml file. Submissions should be 
posted to Github.

BONUS: Have Ansible create 10 different files each with its own random number.

