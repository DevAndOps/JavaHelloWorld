FROM java:7
MAINTAINER Shan
COPY HelloWorld.java .
RUN javac HelloWorld.java

CMD ["java", "HelloWorld"]
