FROM openjdk:8-jdk-alpine
RUN  apk update && apk upgrade && apk add netcat-openbsd
RUN mkdir -p /usr/local/app

ADD target/sba-0.0.1.jar /usr/local/app/app.jar
ADD scripts/run.sh run.sh
RUN chmod +x run.sh
CMD ./run.sh

#ENTRYPOINT ["java","-jar","/usr/local/app/app.jar"]