## Ansible yo App Provision For GCloud
*Notes:* 
* Full automation of yo application provision.
* Understand the provision mechanics by following the played 
roles in -> ./main.yml and reading their tasks in./roles/{role-name}/task/main.yml 

#### Prerequsites
1. Have a GCloud account and have kubectl configured.
2. Have created a Kubernetes cluster.
3. Have Helm and Tiller installed and configured.
4. Ansible installed >= version 2.5.0

### Step 1: Verify variables in hosts file
Verify -> ./hosts

###Step 2: Prepare and encrypt passwords
Follow Readme -> ./group_vars/Readme.MD

###Step 3: Run the ansible playbook from ansible directory
```
ansible-playbook -i hosts -c local main.yml --vault-password-file ./.vault_pass
```
or for more log information
```
ansible-playbook -i hosts -c local main.yml --vault-password-file ./.vault_pass -vvvv 
```
##Remove all yo app pods/services/configurations on kubernetes etc
```
ansible-playbook -i hosts -c local destroy.yml --vault-password-file ./.vault_pass
```
