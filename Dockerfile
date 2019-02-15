FROM golang:1.11.5

COPY entrypoint.sh ./

ENTRYPOINT ["./entrypoint.sh"]
