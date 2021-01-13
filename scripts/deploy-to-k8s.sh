#!/usr/bin/env bash
set -ex

kubectl apply -f deployment/mongo-storage-class.yaml
kubectl apply -f deployment/mongo-pv.yaml
kubectl apply -f deployment/mongo-pvc.yaml
kubectl apply -f deployment/mongo-service.yaml
kubectl apply -f deployment/mongo-deployment.yaml

kubectl apply -f deployment/category-service.yaml
kubectl apply -f deployment/category-deployment.yaml
