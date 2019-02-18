FROM docker:18.09.2

COPY ./entrypoint.sh ./runner.sh /usr/local/bin/

COPY ./Dockerfile.golang /build/Dockerfile

ENTRYPOINT ["entrypoint.sh"]
