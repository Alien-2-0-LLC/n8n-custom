FROM n8nio/n8n:latest

USER root

RUN apk add --no-cache ffmpeg

RUN apk add --no-cache zip

RUN npm install -g libphonenumber-js crypto-js

USER node