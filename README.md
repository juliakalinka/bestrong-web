# BeStrong Web API

This repository contains containerized ASP.NET Core Web API for the BeStrong project.

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