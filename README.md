# docker-rails-webpack-postgres

This repo is used as a template to get started with a development environment using Docker, Rails, Webpack (using Yarn), and Postgress. 

### Notes:###

A volume will be created on the host machine for the data to allow for persistent data. No need to reseed your database.



### Installation:###

Create the database:

```
docker-compose run web bundle exec rails db:create
```



### Boot###

```
docker-compose up
```

