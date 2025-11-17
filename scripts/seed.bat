@echo off
REM Скрипт для наполнения БД

echo Applying database seeder...
docker exec laravel php artisan migrate

if %errorLevel% equ 0 (
    echo Seed applied successfully!
) else (
    echo Failed to apply seed!
)
pause