FROM ruby:2.3.3-slim

# RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN apt-get update -qq \
	&& apt-get install -y --no-install-recommends \
    build-essential \
    libpq-dev \
    nodejs \
  && rm -rf /var/lib/apt/lists/*t

RUN mkdir /mnt/rails
COPY Gemfile /mnt/rails/
COPY Gemfile.lock /mnt/rails/
WORKDIR /mnt/rails

# Bundle install
RUN bundle install
COPY . /mnt/rails

EXPOSE 3000
