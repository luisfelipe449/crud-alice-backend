FROM openjdk:11

ARG PROFILE
ARG ADDITIONAL_OPTS
ARG JAR_FILE=target/produtos-0.0.1-SNAPSHOT.jar

ENV PROFILE=${PROFILE}
ENV ADDITIONAL_OPTS=${ADDITIONAL_OPTS}

WORKDIR /opt/app

COPY ${JAR_FILE} app.jar

SHELL ["/bin/sh", "-c"]

ENTRYPOINT [ "java", "-jar", "app.jar" ]

EXPOSE 8088

CMD java ${ADDITIONAL_OPTS} -jar spring_boot_com_mysql.jar --spring.profiles.active=${PROFILE}