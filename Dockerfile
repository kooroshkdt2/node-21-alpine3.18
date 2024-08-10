FROM node:21-alpine3.18
RUN apk update 
RUN apk add git rsync
RUN  corepack enable && \ 
     corepack prepare pnpm@8.6.11 --activate
RUN npm install -g pnpm semantic-release @semantic-release/git @semantic-release/gitlab @semantic-release/npm @semantic-release/release-notes-generator @semantic-release/commit-analyzer @semantic-release/changelog

