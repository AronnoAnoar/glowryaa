# Don't Merge Anybody Any Branch with main

## last update:  image upload bug fix 

## :hugs: Requirements

        *  PHP >= 7.3
        *  MySQL
        *  Apache
        *  Laravel >= 8.0
        *  Composer

## :clap: Installation:

```bash
    composer install
     # or
    composer install --ignore-platform-reqs

    npm install

    cp .env.example .env

    # Database Connection on .env

    php artisan cache:clear

    php artisan key:generate

    # First Time
    php artisan migrate:fresh --seed

    # After first time migration
    php artisan migrate

    php artisan db:seed

    mkdir public/storage && cp .storage/** public/storage -r

    php artisan storage:link

    # Run Backend Server by Terminal
    php artisan serve

    # Run Frontend Server by Terminal
    npm run watch-poll

```
