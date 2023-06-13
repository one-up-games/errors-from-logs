FROM node:18-alpine3.15

RUN apk update \
    && apk add bash

RUN chmod +x entrypoint.sh

ENTRYPOINT [ "entrypoint.sh" ]

