FROM node:22.7.0-alpine3.19
ENV NODE_VERSION=22.7.0
RUN apk update 
RUN apk add git rsync
RUN  corepack enable && \ 
     corepack prepare pnpm@9.9.0 --activate
RUN npm install -g semantic-release @semantic-release/git @semantic-release/gitlab @semantic-release/npm @semantic-release/release-notes-generator @semantic-release/commit-analyzer @semantic-release/changelog
