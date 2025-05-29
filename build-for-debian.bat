@echo off
SET CGO_ENABLED=0
SET GOOS=linux
SET GOARCH=amd64

xcaddy build --with github.com/uncarbon97/caddy-gitea@v0.0.5

pause

