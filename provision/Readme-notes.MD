NOTES:

INSTALLING HELM ISSUE: system:default not sufficient for helm, but works for kubectl
https://github.com/kubernetes/helm/issues/2687

HEALTH CHECK ISSUE WITH ANSIBLE URI:
Unfortunately we cannot use Ansible uri when when calling insecure ssl. a python 2.7 bug appears:
Request failed: <urlopen error [SSL: UNKNOWN_PROTOCOL] unknown protocol (_ssl.c:590)>"
https://github.com/ansible/ansible/issues/19203 -> to further investigate

Diagrams:
Arch overview: https://app.genmymodel.com/edit/_TkXV0GZwEeiFf-G6LQ_COg/_TkXV0mZwEeiFf-G6LQ_COg#

Testing locally using the following mysql scripts

* CREATE USER 'youser'@'localhost' IDENTIFIED BY 'yoimcool';
* GRANT ALL PRIVILEGES ON *.* TO 'youser'@'localhost' WITH GRANT OPTION;
* CREATE DATABASE yo;

