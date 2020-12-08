FROM nginx:alpine

RUN mkdir -p /certs/ && \
    apk add --update openssl && \
    rm -rf /var/cache/apk/* && \
    openssl req -x509 -newkey rsa:4096 -keyout /certs//privkey.pem \
    -out /certs/fullchain.pem -subj "/C=HU/ST=Dummy/L=Dummy/O=Dummy/CN=dummy.test" -nodes

COPY ./include/ /etc/nginx/include

EXPOSE 80 443

CMD nginx -g 'daemon off;'