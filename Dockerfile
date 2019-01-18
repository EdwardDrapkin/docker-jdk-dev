FROM azul/zulu-openjdk-alpine:11
RUN apk add git 
RUN mkdir -p /opt/gradle/
RUN wget https://services.gradle.org/distributions/gradle-5.1.1-bin.zip -O /opt/gradle/gradle-5.1.1.zip
RUN unzip /opt/gradle/gradle-5.1.1.zip -d /opt/gradle/
ENV PATH "$PATH:/opt/gradle/gradle-5.1.1/bin"
