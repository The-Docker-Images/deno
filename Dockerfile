FROM alpine:3

RUN apk --no-cache add ca-certificates libc6-compat
RUN curl -fsSL https://deno.land/x/install/install.sh | sh

CMD ["deno"]