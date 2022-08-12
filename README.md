# Overview

This project consists of flask application that is developed to predict housing prices in Boston (the model is already created by the instructor).

This repositry demonstrate:

* Deploying the app in Azure CloudShell
* Deploying the app as a web server using Azure App Service.

Once anything has been changed (commits) in the github repositry, it will trigger an action for test automation (CI). A pipeline has been created using Azure DevOps tool, and also any changes will be tested in the pipeline and deployed to app service. All these steps are explianed well in the demo below.

## Project Plan

* A link to a Trello board for the project https://trello.com/b/agz2gagW/udacity
* A link to a spreadsheet that includes the original and final project plan [project-management-template (1).xlsx](https://github.com/alka077/CI-CDpipeline2/files/9328481/project-management-template.1.xlsx)


## Instructions

* Architectural Diagram 

![github architecture](https://user-images.githubusercontent.com/106584802/184396323-51fb2546-579e-4ef3-b4a1-47acb5722cb0.PNG)

![architecture](https://user-images.githubusercontent.com/106584802/184396550-01254e7c-5ec3-4b77-8029-d14df6bbcc64.PNG)

# Deploying the app in Azure CloudShell

 * Azure Cloud Shell, clone the repo:
    git clone <repo ssh url>
    
  ![git clone cloud shell](https://user-images.githubusercontent.com/106584802/184396918-0e394417-7c62-4e37-b161-02d2e6bf16d5.PNG)

Create a virtual environment:

python3 -m venv ~/.myrepo
Activate the virtual environment:

source ~/.myrepo/bin/activate
Change into the new directory:

cd udacity-azure-cicd
Install dependencies in the virtual environment and run tests:

make all

![make all](https://user-images.githubusercontent.com/106584802/184397145-af367adc-cab9-4ab4-ba77-c5e3d444e90f.PNG)


![github action build](https://user-images.githubusercontent.com/106584802/184397570-17d08e0e-0e26-4185-af11-a2dab43d3630.PNG)


* Deploying the app as a web server using Azure App Service.
    
    Create an App Service in Azure. In this example the App Service is cicd-nanodegree-haneen and the resource group is flask-app, you can either create it using Azure cloudShell or the portal itself. In the Azure cloudShell type:

az webapp up -n cicd-nanodegree-haneen -g flask-app
Next, create the pipeline in Azure DevOps. More information on this process can be found here. The basic steps to set up the pipeline are:

Go to https://dev.azure.com and sign in.
Create a new private project. -Create a new service connection to Azure Resource Manager, select subscription and the app service.
Create a new pipeline linked to your GitHub repo using GiThub YAML File.

![make_prediction](https://user-images.githubusercontent.com/106584802/184398667-401105b8-78d5-4a12-a49a-444a6dfb7882.PNG)


![udacityweapp net](https://user-images.githubusercontent.com/106584802/184397286-ebe63c91-75f8-4554-b22a-e66cfa7c4577.PNG)


![make_predict](https://user-images.githubusercontent.com/106584802/184399171-73c74b17-9e20-4e4b-9a17-bd86f97e2947.PNG)

* Running Azure App Service from Azure Pipelines automatic deployment
    
    ![Azure pipelines](https://user-images.githubusercontent.com/106584802/184400414-6f425631-8ca7-47c0-b909-ee35298dba8a.PNG)



* Output of streamed log files from deployed application
    
    ![log Stream](https://user-images.githubusercontent.com/106584802/184400357-a946a8fd-4cfd-4586-92aa-ccef7244620e.PNG)


## Enhancements

to build an image of the app and push to an image registry(e.g acr) and then do a containerized deployment. The app could be deployed to a kubernetes cluster 

## Demo 

(https://www.youtube.com/watch?v=wOxy6o2dDhM)


