# docker-rails-webpack-postgres

This repo is used as a template to get started with a development environment using Docker Compose, Rails, Webpack (using Yarn), and Postgress. 



### Required###

You need to have docker installed and running



### Installation:###

Create the database:

```ruby
docker-compose build
docker-compose up
docker-compose run web bundle exec rails db:create
```



### Start/stop###

```ruby
docker-compose up # this is used to boot
docker-compose down # this is used to shutdown
```



### Notes:

A volume will be created on the host machine for the data to allow for persistent data. No need to reseed your database.

Read more about [Docker compose](https://docs.docker.com/compose/)

