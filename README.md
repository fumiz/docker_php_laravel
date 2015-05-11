setup a lumen project

```
docker run --rm -i -t -v `pwd`:/var/www/html fumiz/php:5.5.24-cli composer create-project laravel/lumen --prefer-dist
```

start a development server

```
docker run --rm -i -t -v `pwd`:/var/www/html -p 8000:8000 fumiz/php:5.5.24-cli php artisan serve --host 0.0.0.0
```
