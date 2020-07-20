FROM java:8-jre

MAINTAINER 542171065@qq.com

RUN mkdir /home/app && \
    mkdir /home/app/activiti && \
    mkdir /home/app/activiti/log && \

# VOLUME /home/app/activiti/log
WORKDIR /home/app/activiti

ADD /home/jenkins/workspace/activiti/target/activiti-0.0.1-SNAPSHOT.jar /home/app/activiti/activiti.jar

# ENV JAVA_OPTS="-Djava.security.egd=file:/dev/./urandom"
ENV APP_PROFILE="prod"

ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/home/app/activiti/activiti.jar --spring.profiles.active=$APP_PROFILE -Dfile.encoding=utf-8"]

ENV TZ=Asia/Shanghai
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

EXPOSE 9090