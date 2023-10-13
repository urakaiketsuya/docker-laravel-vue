# docker-laravel-vue
To get started, run `sh init.sh` in the root directory. 

# Getting started
For manually starting:

install docker desktop

`cd into the laravel folder`

`run docker-compose up`

`run docker-compose exec laravel composer install`

`run docker-compose exec laravel composer dump-autoload`

`run docker-compose exec laravel php artisan migrate:fresh`

`cd into vue folder`

`run npm install && npm run dev`

# Routes

Laravel api uses localhost/api as the base url.
VueJS app uses localhost:8080 for live development.
When deploying to production, VueJS routes will be served at localhost through an nginx proxy container, no need for adding the port.

# For Production Deployment
Uncomment the lines in vue.dockerfile comment out what isn't uncommented.

# Note: Windows
 Permissions errors when running docker on windows with laravel happen due to file ownership differences in your project folder vs inside the docker container. I've added a user in docker.compose under laravel to fix this error. No need for chmod or chown commands.
# sous-chef
