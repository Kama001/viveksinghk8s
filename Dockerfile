FROM golang:1.24

WORKDIR /home

COPY ./pkg /home

RUN cd /home && go build -o library

EXPOSE 8089

CMD [ "/home/library" ]