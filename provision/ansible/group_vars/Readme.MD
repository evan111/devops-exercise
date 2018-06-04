## Encrypting MySQL Passwords With Ansible Vault
*Notes:* The passwords are contained as variables inside ./gcloudK8s/secrets.yml and are encrypted using the following method.

To change the passwords they will need to be reencrypted. 
The secret_template.yml file indicates which password variables to encrypt.

#### Prerequsites
1. Create a file called .vault_pass with a password that will be the master encryption password. (Note this here for demonstration purposes only and is .gitignored.)
2. Create a file called gcloudK8s/secrets.yml and use the secrets_template.yml to fill in password variable values.
2. Run the following to create teh encrypted secrets.yml file.
```
ansible-vault encrypt group_vars/gcloudK8s/secrets.yml --vault-password-file ./.vault_pass
```
