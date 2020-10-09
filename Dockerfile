FROM debian:buster-slim

LABEL version="1.0" name="Mario Tani <mario.tani25@gmail.com>"

WORKDIR /home/

COPY ./setup.sh ./setup.sh
RUN bash setup.sh

COPY ./mirror.list /etc/apt/mirror.list

COPY ./entrypoint.sh /usr/src/entrypoint.sh
RUN chmod +x /usr/src/entrypoint.sh
RUN chmod 777 /usr/src/entrypoint.sh

ENTRYPOINT ["/usr/src/entrypoint.sh"]
# CMD ["/bin/bash", "-c", "apt-mirror"]

