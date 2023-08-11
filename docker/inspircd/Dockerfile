FROM docker.io/inspircd/inspircd-docker:3.16

COPY ./conf /inspircd/conf

RUN set -exu \
  && ls -alh /inspircd/conf

ENTRYPOINT ["/inspircd/bin/inspircd", "--nofork"]
