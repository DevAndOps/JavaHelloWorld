FROM java:7
ENV ENV_VAL1=SHAN \
    ENV_VAL2=CHOW \
    WORKING_DIR="/ShanWorkSpace"
RUN mkdir -p "$WORKING_DIR"
WORKDIR $WORKING_DIR

MAINTAINER Shan

COPY ["HelloWorld.java", "."]
COPY ["MyTestApp", "./Folders/MyTestApp"]
RUN ["javac", "HelloWorld.java"]

CMD ["java", "HelloWorld", "argument1"]
LABEL Application.Name="Java Container" \
      Application.Platform="Java"
