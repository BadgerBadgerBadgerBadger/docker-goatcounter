FROM debian:bookworm-slim

WORKDIR /goatcounter

ENV GOATCOUNTER_VERSION 'v2.5.0'
ENV GOATCOUNTER_LISTEN '0.0.0.0:8080'
ENV GOATCOUNTER_DB 'sqlite:///goatcounter/db/goatcounter.sqlite3'
ENV GOATCOUNTER_SMTP ''

RUN apt-get update \
  && apt-get install -y ca-certificates wget \
  && update-ca-certificates --fresh

ARG TARGETOS
ARG TARGETARCH

ENV TARGETOS $TARGETOS
ENV TARGETARCH $TARGETARCH

COPY download_goatcounter.sh /usr/local/bin/download_goatcounter.sh
RUN chmod +x /usr/local/bin/download_goatcounter.sh
RUN /usr/local/bin/download_goatcounter.sh

COPY goatcounter.sh ./

CMD ["/goatcounter/goatcounter.sh"]
