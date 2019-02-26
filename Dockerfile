# сборка происходит командой docker build --no-cache --build-arg REPO=https://github.com/boxfuse/boxfuse-sample-java-war-hello.git -t mvn_build -f Dockerfile_multistage .
# проверка http://localhost:8080/hello-1.0

FROM maven:3-jdk-7-slim as build
ARG REPO
WORKDIR /srv
COPY . /srv
RUN mvn package
#RUN apt-get update && apt-get install -y git 
#RUN git clone ${REPO} . && mvn package 


FROM tomcat:8-jre8-slim
WORKDIR /usr/local/tomcat/webapps
COPY --from=build /srv/target/*.war .
EXPOSE 8080
CMD ["catalina.sh", "run"]

