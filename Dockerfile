FROM java:7
ENV ENV_VAL1=SHAN \
    ENV_VAL2=CHOW \
    WORKING_DIR="/ShanWorkSpace"
RUN mkdir -p "$WORKING_DIR"
WORKDIR $WORKING_DIR
# Remember only RUN, CMD, ENTRYPOINT, COPY and ADD can take advantage of workdir

MAINTAINER Shan

COPY ["HelloWorld.java", "."]
COPY ["MyTestApp", "./Folders/MyTestApp"]
RUN ["javac", "HelloWorld.java"]

ENTRYPOINT ["java", "HelloWorld"]
VOLUME ["$WORKING_DIR/Folders/Volume1"]
LABEL Application.Name="Java Container" \
      Application.Platform="Java"
