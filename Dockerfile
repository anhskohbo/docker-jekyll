FROM ubuntu:16.04

RUN apt-get update && \
    apt-get install -y ruby ruby-dev nodejs npm gcc git rsync make && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN ln -s /usr/bin/nodejs /usr/bin/node

RUN gem install --no-ri --no-rdoc bundler jekyll && \
    npm install gulp-cli -g
