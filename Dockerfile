FROM ruby:2.5.0

#LABEL  maintainer "USERNAME <USEREMAIL>"

RUN apt-get update -qq
RUN apt-get install -y build-essential
RUN apt-get install -y libpq-dev
RUN apt-get install -y nodejs

# For 'bundle install' not run every time
WORKDIR /tmp

# For copy Gemfile from host to guest
ADD Gemfile Gemfile
ADD Gemfile.lock Gemfile.lock

# For install gems
RUN bundle install

# For set work dir
WORKDIR /myapp
ADD . /myapp
