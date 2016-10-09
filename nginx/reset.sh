#!/bin/bash

kubectl delete configmap/nginx-v1
kubectl delete secrets/dotgo.phraseapp.io-v1
kubectl delete deployments/nginx
