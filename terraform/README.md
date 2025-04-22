# Terraform для Azure App Service

Цей Terraform код створює інфраструктуру в Azure для запуску контейнеризованого ASP.NET Core Web API додатку:

1. Azure Resource Group - група ресурсів
2. Azure Container Registry - реєстр для зберігання Docker образів
3. Azure App Service Plan - план для App Service
4. Azure App Service - сервіс для запуску контейнеризованого додатку

## Передумови

1. Встановлений Terraform
2. Налаштований доступ до Azure (Azure CLI або Service Principal)

## Змінні

Змінні налаштовуються у файлі `variables.tf` або через командний рядок:

- `resource_group_name` - ім'я групи ресурсів (за замовчуванням "bestrong-rg")
- `location` - регіон Azure (за замовчуванням "westeurope")
- `acr_name` - ім'я Azure Container Registry (за замовчуванням "bestrongacr")
- `app_name` - ім'я Azure App Service (за замовчуванням "bestrong-app-service")
- `image_name` - ім'я Docker образу (за замовчуванням "bestrong-web-api")

## Використання

```bash
# Ініціалізація Terraform
terraform init

# Перегляд плану змін
terraform plan

# Застосування змін
terraform apply

# Видалення ресурсів
terraform destroy
```

## Виводи

Після застосування Terraform коду, ви отримаєте наступні виводи:

- `app_service_name` - ім'я створеного App Service
- `app_service_url` - URL для доступу до додатку
- `container_registry_url` - URL реєстру контейнерів
- `resource_group_name` - ім'я групи ресурсів 