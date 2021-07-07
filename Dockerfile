FROM envoyproxy/envoy:v1.18.3 AS envoy
WORKDIR /app
RUN cp $(which envoy) ./envoy

FROM golang:1.16 AS go
ENV PATH $PATH:/usr/local/tinygo/bin
RUN wget https://github.com/tinygo-org/tinygo/releases/download/v0.18.0/tinygo_0.18.0_amd64.deb && \
    dpkg -i tinygo_0.18.0_amd64.deb
COPY --from=envoy /app/envoy /usr/local/bin
