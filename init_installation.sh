#!/usr/bin/env bash

update(){
  yum -y update
}

install_git(){
  yum -y install git
}

install_ansible(){
  yum -y install epel-release
  yum -y install ansible
}

run_ansible_playbook(){
  ansible-playbook -i localhost, -c local construction.yml
}

install_git
update
install_ansible
