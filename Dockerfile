FROM bitwalker/alpine-elixir:1.5 as build

COPY . .

RUN export MIX_ENV=prod && \
    rm -Rf _build && \
    mix deps.get && \
    mix release

RUN APP_NAME="current_time" && \
    RELEASE_DIR=`ls -d _build/prod/rel/$APP_NAME/releases/*/` && \
    mkdir /export && \
    tar -xf "$RELEASE_DIR/$APP_NAME.tar.gz" -C /export

FROM bitwalker/alpine-erlang:20.1.3

COPY --from=build /export/ .

USER default

ENV PORT 4000

ENTRYPOINT ["/opt/app/bin/current_time"]
CMD ["foreground"]
