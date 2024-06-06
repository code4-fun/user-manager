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
