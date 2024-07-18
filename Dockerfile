FROM golang:latest AS builder
WORKDIR /root
COPY . .
RUN go build main.go


FROM debian:12-slim
ENV TZ=Asia/Shanghai
RUN apt-get update && apt-get install -y --no-install-recommends -y ca-certificates \
    && apt-get install -y libc6 wget unzip curl grep \
    && apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
WORKDIR /root
COPY --from=builder  /root/main /root/x-ui
COPY --from=builder  /root/UpdateXray.sh /root/UpdateXray.sh
COPY bin/. /root/bin/.

# RUN wget -O GetXray.sh "https://raw.githubusercontent.com/aircross/x-ui/main/GetXray.sh" \
#     && chmod +x GetXray.sh \
#     && ./GetXray.sh

RUN chmod +x UpdateXray.sh \
    && ./UpdateXray.sh

VOLUME [ "/etc/x-ui" ]
CMD [ "./x-ui" ]
