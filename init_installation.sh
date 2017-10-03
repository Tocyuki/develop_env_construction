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
  git clone https://github.com/Tocyuki/develop_env_construction.git $HOME/develop_env_construction
  cd $HOME/develop_env_construction
  ansible-playbook -i localhost, -c local construction.yml
}

update
install_git
install_ansible
run_ansible_playbook
