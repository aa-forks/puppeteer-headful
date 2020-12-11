FROM node:15-alpine3.12

LABEL "com.github.actions.name"="Puppeteer Headful"
LABEL "com.github.actions.description"="A GitHub Action / Docker image for Puppeteer, the Headful Chrome Node API"
LABEL "com.github.actions.icon"="layout"
LABEL "com.github.actions.color"="blue"

LABEL "repository"="https://github.com/aa-forks/puppeteer-headful"
LABEL "homepage"="https://github.com/aa-forks/puppeteer-headful"
LABEL "maintainer"="AAGaming00, Jacob Lowe"

RUN  apk add chromium \
  && useradd -ms /bin/bash chromeuser

USER chromeuser

ENV PUPPETEER_SKIP_CHROMIUM_DOWNLOAD true

COPY README.md /

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
