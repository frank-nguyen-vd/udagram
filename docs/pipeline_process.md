# Pipeline Process

The pipeline is split into 2 processes: frontend and backend. Both processes are running in parallel to save build and deployment time.

#### Frontend Pipeline
- Install dependencies
- Setup AWS CLI
- Build
- Test
- Deploy

#### Backend Pipeline
- Install dependencies
- Setup EB CLI
- Build
- Test
- Deploy

##  Pipeline Architecture

![pipeline_process](../assets/pipeline_process.jpg)

