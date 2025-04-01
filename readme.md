# PowerShell Script: Create Folder Structure for NestJS

## Description
This PowerShell script automatically creates a folder structure for a NestJS project following the principles of **Clean Architecture** and **SOLID**. It ensures that the required directories exist, creating them if necessary.

## Folder Structure Created
The script will generate the following folder structure inside your NestJS project:

```
src/
 ├── core/
 │   ├── use-cases/
 │   ├── exceptions/
 │
 ├── domain/
 │   ├── entities/
 │   ├── repositories/
 │   ├── services/
 │   ├── dtos/
 │
 ├── infrastructure/
 │   ├── database/
 │   ├── persistence/
 │   ├── queue/
 │   ├── email/
 │   ├── security/
 │
 ├── presentation/
 │   ├── controllers/
 │   ├── filters/
 │
 ├── config/
 │
 ├── shared/
```

## Usage
### Prerequisites
- Ensure you have **PowerShell** installed (available by default on Windows and also installable on macOS/Linux).
- Run the script inside the root directory of your NestJS project.

### Execution Steps PowerShell
1. Save the script as `folder-creation.ps1` inside your NestJS project.
2. Open **PowerShell** and navigate to your project directory:
   ```powershell
   cd path/to/your/nestjs/project
   ```
3. Run the script with:
   ```powershell
   powershell -ExecutionPolicy Bypass -File .\folder-creation.ps1
   ```

### Execution Steps Bash
1. Save the script as `folder-creation.sh` inside your NestJS project.
2. Open **Terminal** and navigate to your project directory:
   ```bash
   chmod +x folder-creation.sh
   ```
3. Run the script with:
   ```bash
   .folder-creation.sh
   ```

## Notes
- If a folder already exists, the script will notify you instead of recreating it.
- Ensure PowerShell execution policies allow running scripts. If you encounter execution policy issues, you may need to run:
  ```powershell
  Set-ExecutionPolicy Unrestricted -Scope Process
  ```

## License
This script is open-source and free to use.

