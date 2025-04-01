#!/bin/bash

# Array of folders to create
folders=(
    "src/core/use-cases"
    "src/core/exceptions"
    "src/domain/entities"
    "src/domain/repositories"
    "src/domain/services"
    "src/domain/dtos"
    "src/infrastructure/database"
    "src/infrastructure/persistence"
    "src/infrastructure/queue"
    "src/infrastructure/email"
    "src/infrastructure/security"
    "src/presentation/controllers"
    "src/presentation/filters"
    "src/config"
    "src/shared"
)

# Create folders if they don't exist
for folder in "${folders[@]}"; do
    if [ ! -d "$folder" ]; then
        mkdir -p "$folder"
        echo "📁 Folder created: $folder"
    else
        echo "✅ Folder already exists: $folder"
    fi
done

echo "🚀 Folder structure created successfully."