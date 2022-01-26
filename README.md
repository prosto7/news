## Проект Новости
Отображение Новостей, Поиск, Похожие новости, Переключение между двумя городами, добавление в избранное.
<img src ='screen.png'>
## Технологии:
PHP 8.0.12
Laravel Framework 8.80.0
Composer version 2.1.5
DB MySql

## Установка

git clone https://github.com/prosto7/news.git
<br>
cd news
<br>
composer install
<br>
npm install
<br>
cp .env.example .env
<br>
вводим настройки БД в файле .env 
<br>
php artisan key:generate
<br>
Далее можем использовать дамп БД файл 'dump.sql', либо сделать миграции<br>
php artisan migrate
<br>
Заполняем таблицы фейковыми данными с помощью команды:<br>
php artisan db:seed 
<br>
php artisan serve

## Модель БД
<img src ='DB_model.png'>
