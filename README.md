# docker-rails-webpack-postgres

This repo is used as a template to get started with a development environment using Docker Compose, Rails, and Postgress. 



### Required###

You need to have docker installed and running



### Installation###

Create the database:

```shell
# Remove git remote origin
git remove remote origin

# Move .env-sample and rails/secrets.sample.yml file
mv .env-sample .env
mv rails/config/secrets.sample.yml rails/config/secrets.yml

# Generate new token & copy output to .env SECRET_KEY_BASE
docker-compose run web bundle exec rake secret

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
  - renames all files with 'drp' entries to a custom name (project)
    - rails/config/database.yml
    - rails/config/environments/production.rb
    - rails/config/initializers/session_store.rb
    - rails/app/views/layouts/application.html.erb
    - rails/config/application.rb
    - README.md
  - generate secret.yml, new secret token, and create db
    - mv rails/config/secrets.sample.yml to secrets.yml
    - rake secret and place in .env file
    - rake db:create
    - rake db:migrate
  - removes git remote origin and adds new origin

