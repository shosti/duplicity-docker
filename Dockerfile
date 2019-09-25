FROM alpine:3.10

ARG DUPLICITY_VERSION
RUN apk add --no-cache duplicity=="${DUPLICITY_VERSION}" py2-pip && \
    pip install b2==1.4.0
