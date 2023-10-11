FROM debian:latest

RUN useradd -m -s /bin/bash danielementary

USER danielementary

RUN apt-get update && apt-get install -y curl && apt-get clean

COPY kddns.sh /app/kddns.sh

RUN chmod +x /app/kddns.sh

CMD while true; do /app/kddns.sh; sleep 900; done
