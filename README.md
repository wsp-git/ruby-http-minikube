# Simple Ruby http web server deployment 

Requirements: Ubuntu 18.04+ and at least 5gb free space

## Installation

Clone the repo
```python
git clone https://github.com/wsp-git/ruby-http-minikube.git
cd ruby-http-minikube/
```
Prepare your private key
and to provision the node run:

```bash
ansible-playbook -i <server_ip>, playbook.yml --user <name> --private-key <path_to_keyfile>
```

## Ansible Roles
1) Ansible will provision the server with docker, minikube and kubectl.
2) Docker image with ruby app will be built for local use with minikube.
3) Kubernetes deployment will be provided using included manifest.
4) Whilest we are using LoadBalancer as service type it's provided using <server ip> address only for running with minikube.

Key points:
* Application is started before served with traffic
* Ruby app is running not under root but with "rbuser"
* Availability is enhanced with probes

After ansible tasks finished you can test provided server response
```python
curl <server-ip>:8080
```
```
Well, hello there!
```
Connect to server and check everything with:
```
kubectl describe deployment ruby-app
kubectl get svc
kubectl get pods -o wide
```
