[![CMS Evolution](https://img.shields.io/badge/CMS-Evolution-brightgreen.svg)](https://github.com/evocms-community/evolution)  ![PHP version](https://img.shields.io/badge/PHP->=v7.4-green.svg?php=7.4) [![Documentation](https://img.shields.io/badge/Documentation-ready-green)](https://github.com/0test/lessons-evolution-blog)

Создан по материалам  курса ["Уроки по созданию блога на Evolution CMS 3"
](https://github.com/0test/lessons-evolution-blog)
Демо: [demoblog.kazunin.ru](http://demoblog.kazunin.ru/)
## Установка:
* клонировать репозиторий
* импортировать БД из файла `evoblog.sql`. Удалите его.
* настроить окружение в файле `/core/custom/.env` (пример из курса в `.env.example`)
* задать настройки в файле `/core/custom/config/cms/settings.php`  (пример из курса в `settings.php.example`)
* сделать `composer update` в папке `core`.
* удалите `evoblog.sql`!
Логин/пароль для админки - admin/admin.