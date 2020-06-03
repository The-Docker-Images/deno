FROM alpine:3

RUN apk --no-cache add ca-certificates libc6-compat gcompat curl libgcc
RUN curl -fsSL https://deno.land/x/install/install.sh | sh

ENV PATH /root/.deno/bin:$PATH

CMD ["deno"]