# rails-training
A simple rails site to try stuff with and be learnin'

## Getting Started


## Dev notes

2/14/2016

This is mostly pulled from the Docker article about using compose and  rails.

I followed those instructions to create the bare bones of a Dockerfile, Gemfile, Gemfile.lock before I commited anything.

First run with this comand is just to scaffold out the new app.

```
docker-compose run web rails new . --force --database=postgresql --skip-bundle
```

Wow! It worked the first time.

Committing...