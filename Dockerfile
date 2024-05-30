FROM public.ecr.aws/docker/library/node:lts-alpine3.20

WORKDIR /app
COPY . /app

RUN apk update \
    && apk add bash

RUN chmod +x /app/entrypoint.sh

ENTRYPOINT [ "/app/entrypoint.sh" ]



