FROM node:10

LABEL maintainer "tom@madecomfy.com.au"

USER root

RUN apt-get update && apt-get install -y --no-install-recommends

RUN apt-get install -y python-dev python-pip && \
    pip install awscli && \
    aws configure set preview.cloudfront true

RUN npm -g config set user root && \
    npm install -g aglio

RUN curl -L https://codeclimate.com/downloads/test-reporter/test-reporter-latest-linux-amd64 > /usr/bin/cc-test-reporter && \
    chmod +x /usr/bin/cc-test-reporter

RUN npm install --global gulp-cli
