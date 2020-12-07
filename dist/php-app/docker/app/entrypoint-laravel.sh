cd /var/www/

composer install --ignore-platform-reqs

php artisan migrate

php artisan cache:clear
php artisan view:clear
php artisan config:clear