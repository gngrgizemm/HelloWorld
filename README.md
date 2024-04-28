## CREATE AKS WITH TERRAFORM
```
cd setups/aks
az login
az account set --subscription <subs-id>
az ad sp create-for-rbac -n <name> --role Contributor --scopes /subscriptions/<subs-id>

terraform init
terraform plan
terraform apply
terraform output -raw kube_config > aks_kubeconfig
export KUBECONFIG=./aks_kubeconfig
k get nodes
```
## DEPLOY NEXUS & JENKINS
```
cd setups/jenkins
ansible-playbook -i inventory.ini jenkins.yml
```

## GET JENKINS PASSWORD
```
k exec -it svc/jenkins -c jenkins -- sh
cat /run/secrets/additional/chart-admin-password 
```
## JENKINS UI
```
kubectl --namespace gizemce port-forward svc/jenkins 8080:8080
http://localhost:8080/

```
## DOCKER REGISTERY SECRET
kubectl create secret docker-registry dockercred --docker-server=https://index.docker.io/v1/ --docker-username="your username" --docker-password="your password" --docker-email="your email" -n gizemce

```


