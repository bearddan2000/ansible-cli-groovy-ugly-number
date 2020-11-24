FROM ubuntu:latest

RUN apt-get update \
    && apt-get -y install ansible git \
    && git clone https://github.com/bearddan2000/ansible-lib-playbooks.git \
    && chmod -R +x ansible-lib-playbooks \
    && ansible-playbook ansible-lib-playbooks/lang/groovy.yml

COPY bin/ .

RUN chmod +x main.groovy

CMD "./main.groovy"
