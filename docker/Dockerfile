FROM jenkins
USER root
RUN apt-get update && apt-get install -y ruby ruby-dev
RUN apt-get install rubygems
RUN gem install diff-lcs -v '1.2.5'
RUN gem install bundler
USER jenkins
