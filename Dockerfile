###############
# Build stage #
###############
FROM elixir:alpine as build

COPY . .

ARG MIX_ENV="prod"
ARG SECRET_KEY_BASE

RUN mix local.hex --force \
    && mix local.rebar --force \
    && mix deps.get \
    && mkdir /export \
    && mix release --path /export/app

####################
# Deployment Stage #
####################
FROM erlang:alpine

COPY --from=build /export/ /opt/

EXPOSE 80

ENTRYPOINT ["/opt/app/bin/shiryel_blog"]
CMD ["start"]
