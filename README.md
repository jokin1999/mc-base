# Minecraft 基础运行环境

基于CentOS7

Docker: [https://hub.docker.com/repository/docker/jokin1999/mc-base](https://hub.docker.com/repository/docker/jokin1999/mc-base)

## 使用方法

```shell
docker pull jokin1999/mc-base
docker run -p 25565:25565 -v [本地MC服务核心目录]:/srv/mc -it jokin1999/mc-base
# 进入容器后
java -jar [MC服务核心.jar文件] nogui
```

## 服务核心

详见项目： [jokin1999/mc-server](https://github.com/jokin1999/mc-server)
