# Docker-RubyonRails
For begining of Ruby on Rails with Docker.

#### Includes the following components:
- Ruby 2.5.0
- Ruby on Rails 5.2.1
- Mysql 5.7
- Redis 3.2.9

## Usage
Clone this repo
```
$ git clone https://github.com/yusukehigasa/Docker-RubyonRails.git
```

### Make new app
```
$ docker-compose run web rails new . --force --database=mysql --skip-bundle --skip-git
```

### Modify `config/database.yml`
```[yml]
default: &default
  adapter: mysql2
  encoding: utf8
  pool: <%= ENV.fetch("RAILS_MAX_THREADS") { 5 } %>
  username: root
  password: root # <- MYSQL_ROOT_PASSWORD of docker-compose.yml
  host: db # <- Service Name of docker-compose.yml
```

### Build the docker containers
```
$ docker-compose build
```

### Run the docker containers
```
$ docker-compose up
```

### DB Migration on the App
```
$ docker-compose run web rails db:create
```

### Watch the App
Open http://localhost:3000 in your browser.

#### Thank you for check out this.

## Author
Yusuke Higasa / [@higa_chan](https://twitter.com/higa_chan)