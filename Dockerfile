# Pull base image
FROM  java:8

MAINTAINER ljk "13164432553@163.com"

VOLUME /tmp

# 添加
ADD target/spring-boot-sample.jar app.jar
RUN bash -c 'touch /app.jar'


# Define default command.
ENTRYPOINT ["java","-Dspring.profiles.active=dev","-jar","/app.jar"]

#设置时区
RUN /bin/cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && echo 'Asia/Shanghai' >/etc/timezone