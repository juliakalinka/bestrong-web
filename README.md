# ASP.NET Core Web API Sample з Docker та Azure DevOps

Цей проєкт демонструє розгортання ASP.NET Core Web API Sample додатку з використанням Docker та Azure DevOps CI/CD pipeline.

## Структура проєкту

- **ASPNETCore-WebAPI-Sample** - вихідний код ASP.NET Core Web API додатку
- **Dockerfile** - файл для збірки Docker образу
- **docker-compose.yml** - конфігурація Docker Compose для локального тестування
- **azure-pipelines.yml** - конфігурація Azure DevOps CI/CD pipeline
- **.env** - змінні середовища (не зберігаються в Git)
- **set-env.ps1** / **set-env.sh** - скрипти для завантаження змінних середовища

## Локальний запуск

1. **Налаштування змінних середовища**:

   Створіть файл `.env` у корені проєкту зі змінними:
   ```
   # Azure credentials
   ARM_CLIENT_ID="your-client-id"
   ARM_CLIENT_SECRET="your-client-secret"
   ARM_SUBSCRIPTION_ID="your-subscription-id"
   ARM_TENANT_ID="your-tenant-id"
   
   # Docker registry credentials
   REGISTRY_USERNAME="registry-username"
   REGISTRY_PASSWORD="registry-password"
   ```

2. **Завантаження змінних середовища**:

   Для Windows (PowerShell):
   ```powershell
   .\set-env.ps1
   ```

   Для Linux/macOS:
   ```bash
   source ./set-env.sh
   ```

3. **Запуск додатку**:
   ```bash
   docker-compose up --build
   ```

   Додаток буде доступний за адресою http://localhost:29435.

## CI/CD Pipeline

CI/CD pipeline налаштований для:

1. **Валідації** - виконується при PR та пуші в main гілку:
   - Збірка Docker образу

2. **Розгортання** - виконується тільки при пуші в main гілку:
   - Збірка та публікація Docker образу в Azure Container Registry
   - Розгортання додатку в Azure App Service

## Вимоги для розгортання

Для розгортання через Azure DevOps Pipeline вам потрібно:

1. **Azure Container Registry** для зберігання Docker образів
2. **Azure App Service** для запуску контейнеризованого додатку
3. **Service connections** в Azure DevOps:
   - `bestrong-acr-connection` - підключення до Azure Container Registry
   - `bestrong-azure-connection` - підключення до Azure

## Налаштування Azure DevOps

1. **Створення Service Connections**:
   - Перейдіть до Project Settings > Service connections
   - Створіть підключення до Azure та ACR

2. **Налаштування змінних середовища**:
   - У Pipeline > Edit > Variables додайте необхідні змінні середовища
   - Позначте конфіденційні змінні як секретні

3. **Налаштування pipeline**:
   - Імпортуйте `azure-pipelines.yml` з репозиторію
   - Запустіть pipeline

## Файли, які не зберігаються в Git

Наступні файли зазвичай не зберігаються в Git через конфіденційність інформації:

- `.env` - змінні середовища
- `.terraform/` - Terraform кеш
- `*.tfstate` та `*.tfstate.*` - Terraform стан
- `.idea/`, `.vscode/` - налаштування IDE
- `bin/`, `obj/` - скомпільовані файли

## Інфраструктура Azure

Інфраструктура Azure створюється окремо. Цей проєкт налаштований для розгортання на існуючу інфраструктуру.

Ресурси Azure, які повинні бути створені заздалегідь:
- Resource Group: `bestrong-rg`
- App Service: `bestrong-app-service`
- Container Registry: `bestrongacr`

## Project Structure

- `ASPNETCore-WebAPI-Sample/` - ASP.NET Core Web API source code
- `terraform/` - Terraform code for Azure infrastructure
- `Dockerfile` - Docker image build instructions
- `docker-compose.yml` - Local testing configuration
- `.azure-pipelines/` - Azure DevOps pipelines

## Local Development

```bash
docker-compose up --build
```

API will be available at http://localhost:8080/api

## Azure Deployment

### Prerequisites
- Azure connection in Azure DevOps
- GitHub connection in Azure DevOps
- Azure Container Registry connection
- Terraform resources created

### Deployment Steps

1. Update Terraform configuration
2. Apply Terraform changes:
   ```bash
   cd terraform
   terraform init
   terraform plan
   terraform apply
   ```
3. Configure Azure DevOps Pipeline using `.azure-pipelines/app-pipeline.yml`

## Application Structure

The application is a RESTful API built on ASP.NET Core 7.0. It provides APIs for managing resources through HTTP requests. 