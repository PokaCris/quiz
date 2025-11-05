### Тема дипломной работы

_тут описание проекта_

Для развертывания выполните следующую команду:

1. Соберите статику:\
...тут будет команда

2. Примените миграцию:\
- для Linux/mac:
```bash
source ./scripts/migrate.sh
```
- для Windows:
```cmd
./scripts/migrate.bat
```

3. Поднимите контейнеры:
- для Linux:
```bash
make serve
```
- для Windows:
```cmd
docker compose up -d
```