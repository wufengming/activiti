FROM java:8-jre

MAINTAINER 542171065@qq.com

ENV TZ=Asia/Shanghai
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

# WORKDIR /activiti_github

EXPOSE 9090

ADD /target/activiti.jar /activiti.jar

# —编译镜像时运行的脚本，这里是授权并运行脚本
RUN bash -c 'touch /activiti.jar'


# ENV JAVA_OPTS="-Djava.security.egd=file:/dev/./urandom"
ENV APP_PROFILE="prod"

ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/activiti.jar"]
