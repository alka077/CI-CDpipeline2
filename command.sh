az webapp up --name udacitywebapp --resource-group Azuredevops --location eastus --runtime "PYTHON:3.7"

az webapp log tail --resource-group Azuredevops --name udacitywebapp
