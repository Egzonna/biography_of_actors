# biography_of_actors

## Start :
`cd actors`

install package :

`composer install`

create env :

`cp .env.exemple .env`

put the value of database in .env.`

put the file `database.sql` in your database to get all the data loaded

### if new project

make migration to create table :

`php artisan migrate`

create admin user :

`php artisan db:seed`

default :

admin email :
`admin@admin.com

admin password :
`password`
