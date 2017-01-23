# docker-rails-webpack-postgres

This repo is used as a template to get started with a development environment using Docker Compose, Rails, Webpack (using Yarn), and Postgress. 



### Required###

You need to have docker installed and running



### Installation###

Create the database:

```shell
# Move rails/secrets.sample.yml file
mv rails/config/secrets.sample.yml rails/config/secrets.yml

# Generate new token & copy output to .env SECRET_KEY_BASE
cd rails && bundle exec rake secret

# Build images and boot
docker-compose build
docker-compose up

# Create the new database
docker-compose run web bundle exec rails db:create
```



### Start/stop###

```ruby
docker-compose up # this is used to boot
docker-compose down # this is used to shutdown
```



### Notes

A volume will be created on the host machine for the data to allow for persistent data. No need to reseed your database.

Read more about [Docker compose](https://docs.docker.com/compose/)



### TODO###

- would be nice to have a setup script that
  - renames all files with 'drwp' entries to a custom name (project)
  - generates all new secret tokens

