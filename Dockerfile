###############
# Build stage #
###############
FROM elixir:alpine as build

COPY . .

ARG MIX_ENV="prod"
ARG SECRET_KEY_BASE

RUN apk add --update npm

RUN mix local.hex --force \
    && mix local.rebar --force \
    && mix deps.get \
    && npm install --prefix ./assets \
    && npm run deploy --prefix ./assets \
    && mix phx.digest \
    && mkdir /export \
    && mix release --path /export/app

####################
# Deployment Stage #
####################
FROM alpine as app
RUN apk add --no-cache openssl ncurses-libs

WORKDIR /app
RUN chown nobody:nobody /app
USER nobody:nobody

COPY --from=build --chown=nobody:nobody /export/app ./

EXPOSE 4000

ENTRYPOINT ["bin/shiryel_blog"]
CMD ["start"]
