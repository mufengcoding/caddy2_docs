FROM alpine:3.11.3
ADD ./src /root/
WORKDIR /root
ADD ./caddy /usr/bin/caddy
ADD ./Caddyfile /root/Caddyfile
EXPOSE 80
EXPOSE 443
#ENTRYPOINT ["caddy"]
CMD ["caddy","run"]
