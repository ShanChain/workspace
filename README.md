##develop env with nodejs v4/npm v3/java8 /scala v2.12.0-RC2 
##First install docker on your machine
you can visit [https://docs.docker.com/engine/installation/linux/ubuntulinux/](https://docs.docker.com/engine/installation/linux/ubuntulinux/) for help
##Second build the Dockfile
###option 1
docker build -t "xxxxx/xxxx" github.com/shanchain/dockerfile-node
###option 2
you can pull it form aliyun docker hub

sudo docker pull registry.cn-hangzhou.aliyuncs.com/shanchain/workspace 
##Third now you have built a image with node.js/java/scala env and you can run it
docker run -i -t xxxx/xxxx /bin/brash
##Finally you can develop in docker with local code
docker run -it -p 8080:3000 -v /Users/user/path/to/project:/project shanchain/workspace /bin/bash

the port 8080 is local port and the 3000 is docker port