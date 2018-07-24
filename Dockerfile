FROM registry.cn-shanghai.aliyuncs.com/lcc/lib-em:latest

RUN set -ex && \
    apk add --no-cache --virtual .builddeps make g++ && \
    gem install --no-rdoc em-hiredis em-http-request && \
    apk del .builddeps
