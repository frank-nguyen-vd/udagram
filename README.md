# HostingFullStackApp

This project demonstrates on how to host web application (frontend, backend, database) in AWS cloud.

Application link: http://randomudagram123.s3-website-ap-southeast-1.amazonaws.com

## Application Feature List

- register new user and login for existing user
- upload image and caption
- view uploaded image and caption

## Project Setup

Clone the project - git clone https://github.com/nicolaurent/HostingFullStackApp.git

### Frontend setup
Install dependencies in `udagram-frontend` directory

`npm install`

### Backend setup

Install dependencies in `udagram-api` directory

`npm install`

### Install AWS CLI and EB CLI to support local deployment to AWS platform

AWS CLI: https://docs.aws.amazon.com/cli/latest/userguide/install-cliv2-windows.html

EB CLI: https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/eb-cli3-install-windows.html

## Screenshots
Below are the screenshots from the latest built

### RDS - Database 

![RDS](https://user-images.githubusercontent.com/14368846/131946924-993dd65f-65b4-488a-8867-cf5a5b1b5465.JPG)

### Elastic Beanstalk - API Server

![EB Dashboard](https://user-images.githubusercontent.com/14368846/131947082-089729b5-232d-44ea-81e8-6ca3d56c0dd4.JPG)

### Amazon S3

![S3 Dashboard](https://user-images.githubusercontent.com/14368846/131947188-1fbb36cc-b8c3-4254-b644-ff8d88fd4913.JPG)

### CircleCI

#### Dashboard [![nicolaurent](https://circleci.com/gh/nicolaurent/HostingFullStackApp.svg?style=svg)](https://app.circleci.com/pipelines/github/nicolaurent/HostingFullStackApp)

![CircleCI Dashboard](https://user-images.githubusercontent.com/14368846/131947472-58d4fa34-e14f-4064-9f18-23a068105849.JPG)

#### Environment Variables

![CircleCI Env Variables](https://user-images.githubusercontent.com/14368846/131947490-b840c421-c0d0-4b11-8fe8-40571b6e0b93.JPG)

#### Frontend_build_deploy

![Frontend_build_deploy](https://user-images.githubusercontent.com/14368846/131947500-82653391-2511-4823-848a-5e506feb2b84.png)

#### Backend_build_deploy 

![Backend_build_deploy](https://user-images.githubusercontent.com/14368846/131947514-d0afdcd6-d259-43d4-9c72-b3d0685ee35e.png)
