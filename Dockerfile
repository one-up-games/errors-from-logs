FROM node:18-alpine3.15

RUN apk update \
    && apk add bash

RUN chmod +x /app/entrypoint.sh

ENTRYPOINT [ "/app/entrypoint.sh" ]

