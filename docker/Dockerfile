FROM elixir:latest

ENV NODE_VERSION 14.x

RUN curl -sL https://deb.nodesource.com/setup_${NODE_VERSION} | bash \
  && apt-get install -y nodejs systemd inotify-tools

RUN npm install npm@latest -g

RUN mix local.hex --force && \
  mix archive.install hex phx_new 1.4.3 --force && \
  mix local.rebar --force

WORKDIR /app

CMD ["sbin", "init"]
