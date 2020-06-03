FROM alpine:3

USER denoapp

RUN apk --no-cache add ca-certificates libc6-compat curl libgcc
RUN mkdir /lib64 && ln -s /lib/libc.musl-x86_64.so.1 /lib64/ld-linux-x86-64.so.2 
RUN curl -fsSL https://deno.land/x/install/install.sh | sh

ENV PATH /home/denoapp/.deno/bin:$PATH

CMD ["deno"]