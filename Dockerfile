FROM golang:alpine
ENV CGO_ENABLED=0
WORKDIR /app
COPY . .

FROM node:current-alpine
ENV CGO_ENABLED=0
WORKDIR /app
COPY --from=0 /usr/local/go/ /usr/local/go/
COPY --from=0 /app /app
ENV PATH="/usr/local/go/bin:${PATH}"
ENV GOPATH /go
ENV PATH $GOPATH/bin:$PATH
ENV AWS_ACCESS_KEY_ID=default-value
ENV AWS_SECRET_ACCESS_KEY=default-value
ENV AWS_DEFAULT_REGION=default-value
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
RUN npm install -g aws-cdk

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]

