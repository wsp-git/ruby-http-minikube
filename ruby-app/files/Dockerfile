FROM ruby:alpine

RUN adduser -D rbuser

USER rbuser

WORKDIR /home/rbuser

COPY http_server.rb .

EXPOSE 80
ENTRYPOINT ["ruby", "http_server.rb"]
