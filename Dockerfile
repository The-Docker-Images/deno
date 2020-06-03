FROM ubuntu:20.04

RUN apt-get update
RUN apt-get install -y curl

RUN curl -fsSL https://deno.land/x/install/install.sh | sh

ENV PATH /root/.deno/bin:$PATH

CMD ["deno"]