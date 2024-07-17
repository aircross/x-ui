FROM golang:1.22-alpine AS builder
WORKDIR /root

COPY . .

RUN go build main.go

RUN apk --no-cache --update add \
  build-base \
  gcc \
  wget \
  unzip

RUN chmod +x ./GetXray.sh && \
  ./GetXray.sh


FROM debian:12-slim
ENV TZ=Asia/Shanghai
RUN apt-get update && apt-get install -y --no-install-recommends -y ca-certificates \
    && apt-get install -y libc6 \
    && apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
WORKDIR /root
COPY --from=builder  /root/main /root/x-ui
COPY bin/. /root/bin/.
VOLUME [ "/etc/x-ui" ]
CMD [ "./x-ui" ]
