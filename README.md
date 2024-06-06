## Используемые технологии

- Node.js

- Express

- Sequelize

## Описание

Приложение содержит endpoint-ы для регистрации/аутентификации пользователей с помощью JWT, получения и изменения созданных ресурсов

1. Регистрация пользователя (POST /user/register)
2. Авторизация пользователя (POST /user/login)
3. Редактирование пользователя (PUT /profile/[id])
4. Получение пользователя (GET /profile/[id])
5. Получение всех пользователей с пагинацией (GET /profiles?page=1, 10 на страницу)

## Сборка и запуск

Создать БД *user_manager* для пользователя *root* без пароля

`git clone https://github.com/code4-fun/user-manager.git`

`cd user-manager`

`cp .\.env.example .\.env` для Windows  
`cp ./.env.example ./.env` для Linux

`npm install`

`npx sequelize-cli db:migrate`

`npm start`

После чего приложение будет доступно на: http://localhost:3001

Пароли пользователей в БД совпадают со значениями в поле name

#### Раздача статики

http://localhost:3001/file_name_in_static_directory


endpoint-ы в файле api.http

дамп БД - user_manager.sql
