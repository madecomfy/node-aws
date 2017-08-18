FROM node:8

LABEL maintainer "tom@madecomfy.com.au"

RUN apt-get update && apt-get install -y --no-install-recommends

RUN apt-get install -y python-dev python-pip && \
    pip install awscli && \
    aws configure set preview.cloudfront true
