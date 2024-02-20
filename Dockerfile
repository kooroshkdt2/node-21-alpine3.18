FROM node:21-alpine3.18
RUN apk update 
RUN apk add git rsync
RUN  corepack enable && \ 
     corepack prepare pnpm@8.6.11 --activate
