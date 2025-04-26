**Homework 17.04**

1. You need to create your own repo in Github and clone https://github.com/FabianGosebrink/ASPNETCore-WebAPI-Sample
2. Create one Dockerfile that will build application and run it.
3. Create dockercompose file that will inlude build (use local build context) and run stages, for local testing purposes, commit this file to repo.
4. Write your own Azure DevOps build flow using yaml syntax and commit it into your GitHub repo. Build and deploy from the main branch. Build PR (Pull Request).
5. Although you have multiple options to deploy the dockerized application, your manager heard about Azure App Service and knows that you have Terraform code for that. You should  determine whether it's necessary to use the old Terraform code, Terraform code with modified configuration, or choose another platform and write Terraform code for it. Although you should write Terraform configuration, there's no requirement to implement CI/CD for it (but you can use your previous pipelines to address this and bring additional value).

Step 1: terraform init, terraform plan, terraform apply to create infrastructure
![terraform apply result](/images/terraform.png)

Step 2: Azure DevOps Pipeline | create branch and PR to main 
![create branch and push](/images/branch.png)

Step 3: Azure DevOps Pipeline | initialize pipeline from PR
![create pull request](/images/pull_request.png)
![open pull request](/images/open_pull_request.png)

Step 4: Azure DevOps Pipeline | Started pipeline
![init pipeline](/images/init_pipeline.png)
![started pipeline](/images/started_pipeline.png)

Step 5: Azure DevOps Pipeline | Pipeline continued after merge
![merge start](/images/start_merge.png)
![merged](/images/merged.png)
![completed pipeline](/images/completed_pipeline.png)

Step 6: Checking resources in Azure
![resource group](/images/resource_group.png)
![acr](/images/acr.png)
![web app](/images/web_app.png)

Step 7: Testing API
![get api](/images/get_api.png)
![post api](/images/post_api.png)
![get id](/images/get_id.png)

Step 8: Testing Swagger
![swagger v1](/images/swagger_v1.png)
![swagger v2](/images/swagger_v2.png)

Step 9: docker-compose
![build docker compose](/images/build_compose.png)
![test docker compose](/images/test_compose1.png)
![test docker compose](/images/test_compose2.png)