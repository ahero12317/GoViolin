# GoViolin
A dockerized go web app where the build is automated by a jenkins pipeline

The docker image: https://hub.docker.com/r/ahero12317/goviolin

the docker image can be run by the following:
```
sudo docker run -e "PORT=$PORT" -p $PORT:$PORT ahero12317/goviolin
```

default port is 8080, otherwise the webapp can be accessed through the port assigned in $PORT

the pipeline is hosted on the localhost so remote building won't work

here's a gif of the build process

I've omitted the part where the docker image is pushed since it takes time to upload it

![Alt Text](https://github.com/ahero12317/GoViolin/blob/master/Peek%202021-05-26%2000-20.gif)
