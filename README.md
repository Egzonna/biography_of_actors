# biography_of_actors

## Start :
`cd actors`

install package :

`composer install`

create env :

`cp .env.example .env`

put the value of database in .env.`

put the file `database.sql` in your database to get all the data loaded

generate encryption Key :

`php artisan key:generate`

if images don't show you need to link :

`php artisan storage:link`

start dev server :

`php artisan serve`

### if new project don't need database

make migration to create table :

`php artisan migrate`

create admin user :

`php artisan db:seed`

default :

admin email :
`admin@admin.com

admin password :
`password`

