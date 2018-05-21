FROM debian:latest

# =========Install your package=========
RUN apt-get update && apt-get install -y make gcc procps
# ======================================

RUN mkdir -p /var/ctf
COPY ./flag /var/ctf/

# ======Build and run your service======
ADD . /src

RUN cd /src; make

ENTRYPOINT ["/src/server"]
