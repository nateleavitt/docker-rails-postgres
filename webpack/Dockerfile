FROM buildpack-deps:jessie

# RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN apt-get update -qq \
	&& apt-get install -y --no-install-recommends \
    build-essential \
    apt-transport-https \
    ca-certificates \
    wget

# Add nodejs sources for 7.x install
RUN wget -qO - https://deb.nodesource.com/setup_7.x | bash -

# Add yarn gpg key and sources for latest yarn install
RUN wget -qO - https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list
RUN apt-get update -qq \
  && apt-get install -y --no-install-recommends \
  yarn \
  nodejs \
  && rm -rf /var/lib/apt/lists/*t

RUN mkdir /mnt/webpack
COPY package.json /mnt/webpack/
WORKDIR /mnt/webpack

# Yarn install
RUN yarn install

COPY . /mnt/webpack
