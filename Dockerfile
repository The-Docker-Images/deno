FROM ubuntu:20

RUN curl -fsSL https://deno.land/x/install/install.sh | sh

ENV PATH /root/.deno/bin:$PATH

CMD ["deno"]