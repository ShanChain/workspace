##First install docker on your machine
you can visit [https://docs.docker.com/engine/installation/linux/ubuntulinux/](https://docs.docker.com/engine/installation/linux/ubuntulinux/) for help
##Second build the Dockfile
docker build -t "xxxxx/xxxx" github.com/shanchain/dockerfile-node
##Finally now you have built a image for node.js and you can run it
docker run -i -t xxxx/xxxx /bin/brash
##you can develop in docker with local code
docker run -it -p 8080:3000 -v /Users/user/path/to/project:/project shanchain/workspace /bin/bash