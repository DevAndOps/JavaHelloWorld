FROM java:7
ENV ENV_VAL1=SHAN \
    ENV_VAL2=CHOW
MAINTAINER Shan
COPY HelloWorld.java .
RUN ["javac", "HelloWorld.java"]

CMD ["java", "HelloWorld"]
LABEL Application.Name="Java Container" \
      Application.Platform="Java"
