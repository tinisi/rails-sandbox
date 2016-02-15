# rails-training
A simple rails site to try stuff with and be learnin'

## Getting Started

Now that we are bootstrapped, assuming you have your environment pointed to a running docker host, you should be able to check out this code and run something like this and you'll have a running although empty rails site.

```
docker-compose build
docker-compose up
docker-compose run web rake db:create
```

## Dev notes

2/14/2016

This is mostly pulled from the Docker article about using compose and  rails.

https://docs.docker.com/compose/rails/

I followed those instructions to create the bare bones of a Dockerfile, Gemfile, Gemfile.lock before I commited anything.

First run with this comand is just to scaffold out the new app.

```
docker-compose run web rails new . --force --database=postgresql --skip-bundle
```

Wow! It worked the first time.

Committing...

And, now that I am rolling, moving over to try to jump in wherever this book lines up:

https://www.railstutorial.org/book

Since the bootstrap has changed my Gemfile, I need to build again to get everything into the image.

```
docker-compose build
```

Crap, this isn't working, getting an error when I try to db:migrate.

Adding this to Dockerfile (I had skipped it earlier)
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev

```
docker-compose build
docker-compose up
```

Heh, read more on the Docker compose quick start, need to set up config/database.yml.

Now we are cooking! However, when I run the command below, I get a message that the database already exists.

```
docker-compose run web rake db:create
```

But, the server is UP and I can get to the Welcome Aboard page!

Next session, need to see if I can remove libpq-dev from the Dockerfile, I was assuming the pg client would get me that library.



