# Minecraft 基础运行环境

基于CentOS7

Docker: [https://hub.docker.com/repository/docker/jokin1999/mc-base](https://hub.docker.com/repository/docker/jokin1999/mc-base)

## 使用方法

```
# 镜像拉取，国内推荐使用下方国内加速拉取方法
docker pull jokin1999/mc-base
# 运行容器
docker run -p 25565:25565 -v [本地MC服务核心目录]:/srv/mc -it jokin1999/mc-base
# 进入容器后运行服务端
java -jar [MC服务核心.jar文件] nogui
```

## 国内加速拉取方法

拉取时可省略`:[镜像版本号]`

### 阿里云

- 登录阿里云容器服务

```
docker login --username=[阿里云容器用户名] registry.cn-shanghai.aliyuncs.com
```

- 从国内拉取镜像

```
docker pull registry.cn-shanghai.aliyuncs.com/jokin1999/mc-base
```
或
```
docker pull registry.cn-shanghai.aliyuncs.com/jokin1999/mc-base:[镜像版本号]
```

## 服务核心

详见项目： [jokin1999/mc-server](https://github.com/jokin1999/mc-server)
