# DevOps & Automation
Repository for code challenges related to DevOps and practice exercises. Might include code related to linux scripts, ansible, terraform, docker, kubernetes, aws, python and more.

## Jenkins notes:
On mac Can be started with:
```
brew services start jenkins
```

## Install Jenkins as a container

Run the following commands:
```
docker --version

docker pull jenkins/jenkins:lts

docker run --detach --publish 8080:8080 --volume jenkins_home:/var/jenkins_home --name jenkins jenkins/jenkins:lts

docker exec jenkins cat /var/jenkins_home/secrets/initialAdminPassword
```

### Notes about these commands:

`docker run`
creates and starts a new container from a specified image.

`docker pull <image>`
Pull the specified image. The images available for the containers can be seen using `docker image`.

`--detach or -d` runs the container in the background and prints the container ID

`--publish or -p`: maps a port on your local machine to a port inside a container.

`--volume or -v` mounts a directory from the host system into the docker container. Usefull to persist data outside of the container.

`docker exec <command>` allows the user to execute a command inside a running container.

`docker restart <container-name>` restarts a container that exited/closed

`docker ps -a` lists all the containers and their status