#!/bin/bash
# Скрипт для наполнения БД

echo "Applying database seeder..."
docker exec laravel php /app/artisan migrate

if [ $? -eq 0 ]; then
    echo "Seed applied successfully!"
else
    echo "Failed to apply seed!"
fi