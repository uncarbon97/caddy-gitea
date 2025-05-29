FROM caddy:2.6-builder-alpine AS builder

RUN xcaddy build \
    --with github.com/uncarbon97/caddy-gitea@set-mime-type

FROM caddy:2.6.2

COPY --from=builder /usr/bin/caddy /usr/bin/caddy
