FROM debian:latest

RUN apt-get update && apt-get install -y curl

COPY kddns.sh  /app/kddns.sh

RUN chmod +x /app/kddns.sh

CMD while true; do /app/kddns.sh; sleep 900; done
