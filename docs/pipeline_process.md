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

![pipeline_process](https://user-images.githubusercontent.com/14368846/131862201-4a459869-ada0-46fc-b96e-62c05494301e.JPG)

