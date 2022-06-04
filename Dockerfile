FROM sonarsource/sonar-scanner-cli:latest
ARG VCS_REF
ARG BUILD_DATE
ARG VERSION
ARG USER_EMAIL="jack.crosnier@w6d.io"
ARG USER_NAME="Jack CROSNIER"
LABEL maintainer="${USER_NAME} <${USER_EMAIL}>" \
        org.label-schema.vcs-ref=$VCS_REF \
        org.label-schema.vcs-url="https://github.com/w6d-io/docker-sonarqube" \
        org.label-schema.build-date=$BUILD_DATE \
        org.label-schema.version=$VERSION

ENV DESIRED_VERSION $DESIRED_VERSION

RUN apk update
RUN apk add vim wget curl git build-base
RUN python3 -m ensurepip
RUN python3 -m pip
RUN pip3 install --no-cache --upgrade pip setuptools
