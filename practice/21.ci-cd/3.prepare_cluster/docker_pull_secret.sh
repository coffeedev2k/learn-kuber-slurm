#!/bin/bash

NS=xpaste-development

kubectl delete secret xpaste-gitlab-registry --namespace "$NS"

kubectl create secret docker-registry xpaste-gitlab-registry \
  --docker-server registry.gitlab.com \
  --docker-email 'student@slurm.io' \
  --docker-username 'gitlab+deploy-token-3783192' \
  --docker-password 'gldt-GWQPyyQmunsypSqLmTat' \
  --namespace "$NS"
