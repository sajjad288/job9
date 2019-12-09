FROM openjdk:8-jdk-alpine
MAINTAINER Oscar Dev <broadmind@io.com>
ADD target/springbootdemo.jar springbootdemo.jar
CMD ["java","-jar","/springbootdemo.jar"]
