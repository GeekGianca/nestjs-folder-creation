@echo off
setlocal enabledelayedexpansion

:: Define the folder structure
set folders=
set folders=src\core\use-cases src\core\exceptions
set folders=!folders! src\domain\entities src\domain\repositories src\domain\services src\domain\dtos
set folders=!folders! src\infrastructure\database src\infrastructure\persistence src\infrastructure\queue
set folders=!folders! src\infrastructure\email src\infrastructure\security
set folders=!folders! src\presentation\controllers src\presentation\filters
set folders=!folders! src\config src\shared

:: Create the folders
for %%F in (!folders!) do (
    if not exist %%F (
        mkdir %%F
        echo Folder created: %%F
    ) else (
        echo Folder already exists: %%F
    )
)

echo Folder structure created successfully.
endlocal
pause