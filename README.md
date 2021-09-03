# Udagram

This project demonstrates on how to host web application (frontend, backend, database) in AWS cloud.

Application link: `TODO`

## Application Feature List

- Register new user and login for existing user
- Upload image and caption
- View uploaded image and caption

## Project Setup

```sh
npm run deploy
```

### Install AWS CLI and EB CLI to support local deployment to AWS platform

AWS CLI: https://docs.aws.amazon.com/cli/latest/userguide/install-cliv2-windows.html

EB CLI: https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/eb-cli3-install-windows.html

## Screenshots

Below are the screenshots from the latest built

### RDS - Database

![RDS](./docs/images/rds.jpeg)

### Elastic Beanstalk - API Server

![EB Dashboard](./docs/images/eb.jpeg)

### Amazon S3

![S3 Dashboard](./docs/images/s3.jpeg)

### CircleCI

#### Dashboard 

![CircleCI Dashboard](./docs/images/circleci_dashboard.jpeg)

#### Environment Variables

![CircleCI Env Variables](./docs/images/circleci_env.jpeg)

#### Frontend_build_deploy

![Frontend_build_deploy](./docs/images/circleci_frontend.jpeg)

#### Backend_build_deploy

![Backend_build_deploy](./docs/images/circleci_backend.jpeg)
