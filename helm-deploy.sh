#!/bin/bash

# login to az cli using managed identity
az login --identity

# get kubernetes credentials
az aks get-credentials --name $CLUSTERNAME --resource-group $CLUSTERGROUP

# add helm repo
helm repo add nginx-stable https://helm.nginx.com/stable

# update helm repos
helm repo update

# install helm chart
helm install nginx nginx-stable/nginx-ingress