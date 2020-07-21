#!/bin/bash

# 停止容器
sudo docker stop newgrand-activiti

# sleep 2s

# 删除容器
sudo docker rm -f newgrand-activiti

# 删除镜像
sudo docker rmi -f newgrand/activiti:1.0

# 构建镜像 . 号表示在当前目录构建
sudo docker build -t newgrand/activiti:1.0 .

# 创建容器并启动
sudo docker run -d -p 9090:9090 --name newgrand-activiti newgrand/activiti:1.0
