#!/bin/sh

# necessary to work with locally built docker images
eval $(minikube -p minikube docker-env)
docker build . -t imglocal/ruby_app