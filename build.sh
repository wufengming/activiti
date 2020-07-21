#!/bin/bash

# 停止容器
docker stop newgrand-activiti

# sleep 2s

# 删除容器
docker rm -f newgrand-activiti

# 删除镜像
docker rmi -f newgrand/activiti:1.0

# 构建镜像 . 号表示在当前目录构建
docker build -t newgrand/activiti:1.0 .

# 创建容器并启动
docker run -d -p 9090:9090 --name newgrand-activiti newgrand/activiti:1.0
