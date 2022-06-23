# docker-laravel-vue
To get started, cd into the laravel folder and run docker-compose up.

# Routes

Laravel api uses localhost/api as the base url.
VueJS app uses localhost:8080 for live development.
When deploying to production, VueJS routes will be served at localhost through an nginx proxy container, no need for adding the port.

# For Production Deployment
Uncomment the lines in vue.dockerfile comment out what isn't uncommented.

