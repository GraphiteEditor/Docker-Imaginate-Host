# syntax=docker/dockerfile:1
FROM alpine:3.14
WORKDIR /imaginate
RUN apk add --no-cache gcc musl-dev linux-headers bash curl grep
COPY . .
RUN chmod +x /imaginate/script.sh
CMD ["/imaginate/script.sh"]
