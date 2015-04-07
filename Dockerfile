FROM trenpixster/elixir:latest
MAINTAINER Mike Williams
RUN sudo apt-get update
RUN sudo apt-get install -y build-essential
RUN mkdir /tmp/emqttd
COPY emqttd /tmp/emqttd
WORKDIR /tmp/emqttd
RUN make
RUN make dist
WORKDIR /tmp/emqttd/rel/emqttd
