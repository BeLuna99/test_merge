FROM nginx:1.19.4-alpine

ENV http_proxy http://proxy.hcm.fpt.vn:80
ENV https_proxy http://proxy.hcm.fpt.vn:80

RUN apk update
RUN apk add busybox-extras
RUN apk add tzdata librdkafka librdkafka-dev curl ngrep \
    && cp /usr/share/zoneinfo/Asia/Ho_Chi_Minh /etc/localtime \
    && echo "Asia/Ho_Chi_Minh" > /etc/timezone \
    && apk del tzdata

ENV http_proxy ""
ENV https_proxy ""
