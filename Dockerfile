# CHANGE THIS TO REFLECT VERSION 3.7 OF ALPINE
# Ron Quintos: Simply appened ":3.7" to explicity call version 3.7
FROM alpine:3.7

# A DEPENDENCY IS MISSING AND ANSIBLE WILL FAIL TO COMPILE, IDENTIFY ROOT CAUSE
# AND REMEDIATE
# Ron Quintos: Missing dependency was libressl-dev.  Initially thrown off since it complained about openssl
RUN apk update && \
  apk add build-base libffi-dev python3 python3-dev libressl-dev

RUN pip3 install --upgrade pip

# INSTALL ANSIBLE 2.5.8 VIA PIP
# Ron Quintos: Added the pip install command
RUN pip3 install ansible==2.5.8 

# THIS COMMAND WILL FAIL, IDENTIFY ROOT CAUSE AND REMEDIATE
# Ron Quintos: Failure was caused by the file not included in the docker image.  Needed to add the copy command to add it to a target location
COPY playbook.yml /ansible/playbooks/
CMD ansible-playbook /ansible/playbooks/playbook.yml && ls /challenge/
