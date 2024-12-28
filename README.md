# Django Nuxt Docker Starter

Generic Django-rest nuxt redis structure with docker-compose and opinionated to follow the absolute minimal basic requirements.
Based on the following setup

- Django 5.1.4 on python 3.13.1 and poetry for environment management
- Postgresql 16
- Nuxt 3.12.4 on bun
- Redis 7.2.5

for production use --env-file .env.prod or suitable env file so you can separate dev and prod settings

2 different compose files for dev and prod are provided, with the dev server and nuxt running on volumes so hot reload is enabled.

## Setup
1. Make a copy of the .env.template file and rename it to .env for development and .env.prod for production, fill in the required values
2. run docker-compose with the appropriate file

## Notes
1. typically you would want the nuxt ssr to be false, but by default no changes are made to nuxt.config.ts
2. the nuxt server is running on port 3000, the django server is running on port 8000, and the redis server is running on port 6379 in their respective containers
3. currently tested to run on Mac and Linux (ubuntu and debian), windows dev setup will fail due to differences in path naming conventions

## TODO
- Add a script to autorename the server project name to something user defined
- designed for wsgi server by gunicorn, add support for asgi
- add support for Windows