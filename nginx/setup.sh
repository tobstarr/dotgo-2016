#!/bin/bash
set -xe

kubectl create configmap nginx-v1 --from-file=nginx.conf > /dev/null 2> /dev/null || /bin/true
kubectl create secret tls dotgo.phraseapp.io-v1 --key $HOME/.lego/certificates/dotgo.phraseapp.io.key  --cert $HOME/.lego/certificates/dotgo.phraseapp.io.crt

kubectl apply -f nginx.dpl.yml
kubectl apply -f nginx.svc.yml
