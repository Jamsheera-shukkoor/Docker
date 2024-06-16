FROM debian:latest
SHELL ["/bin/bash", "-c"]
WORKDIR /home
COPY wisecow.sh wisecow.sh
RUN chmod 755 wisecow.sh
RUN apt update && apt install -y fortune-mod cowsay ncat
ENV PATH="/usr/games:${PATH}"

ENTRYPOINT ["./wisecow.sh"]
