FROM alpine

LABEL "repository"="http://github.com/homerjam/git-sync-alternate"
LABEL "homepage"="http://github.com/homerjam/git-sync-alternate"
LABEL "maintainer"="James Homer <hello@homerjam.es>"

RUN apk add --no-cache git openssh-client bash && \
  echo "StrictHostKeyChecking no" >> /etc/ssh/ssh_config

ADD *.sh /

ENTRYPOINT ["/entrypoint.sh"]
