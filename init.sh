#!/bin/bash

C='\033[0;36m'
N='\033[0m' # No Color

echo ${C}  "Launching docker containers."${N}
cd laravel
docker-compose up -d
echo ${C}  "Docker containers launched."${N}
echo ${C}  "Building app inside containers."${N}
docker-compose exec -T laravel composer install
docker-compose exec -T laravel php artisan module:use
docker-compose exec -T laravel php artisan module:enable
docker-compose exec -T laravel php artisan optimize
docker-compose exec -T laravel php artisan migrate:fresh
docker-compose exec -T laravel php artisan db:seed
echo ${C}  "App is ready at localhost:8080." ${N}