FROM alpine

LABEL "repository"="http://github.com/tst32/git-sync"
LABEL "homepage"="http://github.com/tst32/git-sync"
LABEL org.opencontainers.image.authors="Wei He <github@weispot.com>"
 

RUN apk add --no-cache git openssh-client && \
  echo "StrictHostKeyChecking no" >> /etc/ssh/ssh_config

ADD *.sh /

ENTRYPOINT ["/entrypoint.sh"]
