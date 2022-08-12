# Overview

This project consists of flask application that is developed to predict housing prices in Boston (the model is already created by the instructor).

This repositry demonstrate:

* Deploying the app in Azure CloudShell
* Deploying the app as a web server using Azure App Service.

Once anything has been changed (commits) in the github repositry, it will trigger an action for test automation (CI). A pipeline has been created using Azure DevOps tool, and also any changes will be tested in the pipeline and deployed to app service. All these steps are explianed well in the demo below.

## Project Plan
<TODO: Project Plan

* A link to a Trello board for the project
* A link to a spreadsheet that includes the original and final project plan>

## Instructions

* Architectural Diagram 

[github architecture](https://user-images.githubusercontent.com/106584802/184396323-51fb2546-579e-4ef3-b4a1-47acb5722cb0.PNG)

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

![make_prediction](https://user-images.githubusercontent.com/106584802/184398667-401105b8-78d5-4a12-a49a-444a6dfb7882.PNG)


![udacityweapp net](https://user-images.githubusercontent.com/106584802/184397286-ebe63c91-75f8-4554-b22a-e66cfa7c4577.PNG)


![make_predict](https://user-images.githubusercontent.com/106584802/184399171-73c74b17-9e20-4e4b-9a17-bd86f97e2947.PNG)




* Running Azure App Service from Azure Pipelines automatic deployment

* Successful prediction from deployed flask app in Azure Cloud Shell.  [Use this file as a template for the deployed prediction](https://github.com/udacity/nd082-Azure-Cloud-DevOps-Starter-Code/blob/master/C2-AgileDevelopmentwithAzure/project/starter_files/flask-sklearn/make_predict_azure_app.sh).
The output should look similar to this:

```bash
udacity@Azure:~$ ./make_predict_azure_app.sh
Port: 443
{"prediction":[20.35373177134412]}
```

* Output of streamed log files from deployed application

> 

## Enhancements

<TODO: A short description of how to improve the project in the future>

## Demo 

<TODO: Add link Screencast on YouTube>


