FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=1.4.4

RUN gem install ansible-powerplay --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["powerplay"]
CMD ["--help"]
