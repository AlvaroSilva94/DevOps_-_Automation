# Challenge of creating a debian container with Ansible and starting it, able for ssh connection

This is just an automation challenge for me to improve my knowledge of ansible and doing something I have never done before.

For this example, I will be executing on localhost and then I will deploy this into a linux host using my local as a root node.

## Tasks
[X] Create a playbook that creates a docker container

[X] Update that playbook to pull a debian image into the container and start it

[ ] Since ansible is idempotent, if they are not installed, install the following packages:
* python
* pip
* docker
* python3-docker.

[ ] Create a Dockerfile that exposes a port in the container for ssh connection. 

## Steps to execute
To run the playbook that creates the container, specifing the hosts file, use the command:

    ansible-playbook -i hosts/hosts create_docker_container.yaml

Note: Might need to run "sudo apt install python3-docker" to pull the debian image. Will add this to the script

