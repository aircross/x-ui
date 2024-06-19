FROM golang:latest AS builder
WORKDIR /root
ARG TARGETARCH
COPY . .
RUN go build main.go
RUN ./DockerInit.sh "$TARGETARCH"


FROM debian:12-slim
ENV TZ=Asia/Shanghai
RUN apt-get update && apt-get install -y --no-install-recommends -y ca-certificates \
    && apt-get install -y libc6 \
    && apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
WORKDIR /root
COPY --from=builder  /root/main /root/x-ui
COPY --from=builder /root/bin/. /root/bin/.
VOLUME [ "/etc/x-ui" ]
CMD [ "./x-ui" ]
