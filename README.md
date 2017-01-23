# docker-rails-webpack-postgres

This repo is used as a template to get started with a development environment using Docker Compose, Rails, Webpack (using Yarn), and Postgress. 



### Notes:###

A volume will be created on the host machine for the data to allow for persistent data. No need to reseed your database.



### Required###

You need to have docker installed and running



### Installation:###

Create the database:

```
docker-compose run web bundle exec rails db:create
```



### Boot###

```
docker-compose up
```

