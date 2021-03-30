FROM adoptopenjdk:11-jre
COPY target/JenkensTest-1.0-SNAPSHOT.jar /demo.jar
ENTRYPOINT ['java', '-jar','/demo.jar']