FROM java:7
ENV ENV_VAL1=SHAN \
    ENV_VAL2=CHOW \
    WORKING_DIR="/ShanWorkSpace"
RUN mkdir -p "$WORKING_DIR"
WORKDIR $WORKING_DIR

MAINTAINER Shan

COPY HelloWorld.java .
RUN ["javac", "HelloWorld.java"]

CMD ["java", "HelloWorld"]
LABEL Application.Name="Java Container" \
      Application.Platform="Java"
