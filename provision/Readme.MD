## Containerize yo App And Deploy To Kubernetes Instructions
*Notes:* 
* GCloud implementation of DevOps Excercise. 
* The easy way to understand the deployment mechanics is to follow the ansible playbook -> ./ansible/Readme.MD.

#### Current Endpoint: [yo App list](http://35.232.13.174/v1/user/list) 
(click proceed unsafe)

##### See Me for a tour of my GCloud account configuration :)
(However it's generic, all config is in this patch.)

##### Technology structure
* Ansible: For overall automation.
* Maven: dockerfile-maven-plugin for yo application build.
* Docker: For containerization of and future scalability of web service.
* Kubernetes: For container orchestration.
* Helm/Tiller: For templated docker container generation and deploy to Kubernetes.

##### What was accomplished
* One commandline build/package/deploy/health check command using ansible.
* Mysql password encryption from control machine.
* Provisioned 1 instanced MySql with persistantVolume claim. (Scalable via Helm)
* Build/Dockerize/Deploy yo application
* Nginx ingress controller to reverse proxy/loadbalance yo app
* Healh check using HTTP 200 response from yo webservice

##### What was omitted
* Password encryption (secrets) from Kubernetes, because yo application baked in the Mysql password
* Self Signed SSL Certificate generation and implementation
* Domain name DNS routing.

## For lazy developers (like me...) run the Ansible playbook
Follow Readme -> ./ansible/Readme.MD


