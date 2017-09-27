FROM alpine:3.6

WORKDIR /opt/ruby-application
COPY . /opt/ruby-application

RUN apk add --update ruby ruby-json ca-certificates && \
    rm -rf /var/cache/apk/*

RUN echo "gem: --no-rdoc --no-ri --env-shebang" >> "$HOME/.gemrc" && \
    gem install dep:1.1.0 && cd /opt/ruby-application && dep install

EXPOSE 80

ENTRYPOINT ["rackup"]

CMD ["--host", "0.0.0.0", "--port", "80"]
