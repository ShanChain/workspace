##First install docker on your machine
you can visit [https://docs.docker.com/engine/installation/linux/ubuntulinux/](https://docs.docker.com/engine/installation/linux/ubuntulinux/) for help
##Second build the Dockfile
docker build -t "xxxxx/xxxx" github.com/shanchain/dockerfile-node
##Finally now you have built a image for node.js and you can run it
docker run -i -t xxxx/xxxx /bin/brash