FROM maven:3.6.3-openjdk-16-slim

WORKDIR /app
COPY . /app

# copy the packaged jar file into our docker image
RUN cp target/*-SNAPSHOT.jar /app/app.jar

# set the startup command to execute the jar
CMD ["java", "-jar", "/app/app.jar"]
