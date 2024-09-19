# DevOps_-_Automation
Repository for code related to ansible, terraform, docker, kubernetes, aws, python and more

To run the playbook that creates the container, specifing the hosts file, use the command:
´´´
ansible-playbook -i hosts/hosts create_docker_container.yaml --ask-become-pass
´´´
