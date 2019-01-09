# Base image
FROM fenglc/pgadmin4:2.1-alpine

# Base dependencies
RUN apk add --no-cache \
  curl

# Expose ports
EXPOSE 5050

# Healthcheck
ADD ./docker-healthcheck.sh /usr/local/bin/docker-healthcheck
RUN chmod +x /usr/local/bin/docker-healthcheck
HEALTHCHECK CMD docker-healthcheck
