#ubuntu desktop install
sudo apt-get install ubuntu-desktop

#expand partiton
parted /dev/sda
resizepart 2

resize2fs /dev/sda2 15G



#docker install
https://docs.docker.com/install/linux/docker-ce/ubuntu/

sudo apt-get update

$ curl -fsSL get.docker.com -o get-docker.sh
$ sudo sh get-docker.sh

usermod -aG docker james




#docker basic

docker pull
docker run -it *** sh
docker images
docker ps -a 

docker rm $(docker ps -a -q -f status=exited)


docker rmi


james@docker:~$ docker run -d -P --name static-site prakhar1989/static-site
james@docker:~$ docker port static-site
80/tcp -> 0.0.0.0:32769
443/tcp -> 0.0.0.0:32768
james@docker:~$ docker ps
CONTAINER ID        IMAGE                     COMMAND                  CREATED             STATUS              PORTS                                              NAMES
7374eac5642e        prakhar1989/static-site   "./wrapper.sh"           2 minutes ago       Up 2 minutes        0.0.0.0:32769->80/tcp, 0.0.0.0:32768->443/tcp      static-site
bc19ef7aa215        jenkins/jenkins           "/sbin/tini -- /usr/…"   About an hour ago   Up About an hour    0.0.0.0:8080->8080/tcp, 0.0.0.0:50000->50000/tcp   optimistic_thompson



#lamp install
https://hub.docker.com/r/greyltc/lamp/
docker run --name lamp -p 443:443 -d greyltc/lamp

docker run -v ~/www:/var/www/james/it/v2 --name lamp -p 80:80 -d greyltc/lamp
