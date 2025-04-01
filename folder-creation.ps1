$folders = @(
    "src/core/use-cases",
    "src/core/exceptions",
    "src/domain/entities",
    "src/domain/repositories",
    "src/domain/services",
    "src/domain/dtos",
    "src/infrastructure/database",
    "src/infrastructure/persistence",
    "src/infrastructure/queue",
    "src/infrastructure/email",
    "src/infrastructure/security",
    "src/presentation/controllers",
    "src/presentation/filters",
    "src/config",
    "src/shared"
)

foreach ($folder in $folders) {
    if (!(Test-Path -Path $folder)) {
        New-Item -ItemType Directory -Path $folder | Out-Null
        Write-Host "Created folder: $folder"
    } else {
        Write-Host "Folder exist: $folder"
    }
}

Write-Host "Structure and folders created successfully."
