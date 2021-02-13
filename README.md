
# Project

Development of continuous integration scripts with using [concourse-ci](https://concourse-ci.org) pipeline and sample react application.

## Jobs

* Testflight job to run test scripts
* Build job to run build scripts and create docker image
* Deploy job to deploy obtained build task image to docker swarm servers
* Version minor job to increase minor version
* Version major job to increase major version

## Pipelines 

* Preview Pipeline
* * branch: development
* * jobs: [testflight-preview, build-preview, deploy-preview, version-minor, version-major]

* Prod Pipeline
* * branch: master
* * jobs: [testflight-prod, build-prod, deploy-prod]
