FROM ubuntu:latest

RUN apt-get -yq update && \
    apt-get -yq install curl

RUN curl -L -o /usr/local/bin/opa https://github.com/open-policy-agent/opa/releases/download/v0.10.0/opa_linux_amd64 && \
    chmod 755 /usr/local/bin/opa

ENTRYPOINT ["/usr/local/bin/opa"]
CMD ["run"]