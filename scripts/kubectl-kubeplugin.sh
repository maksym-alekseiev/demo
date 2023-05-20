#!/bin/bash

# Define command-line arguments
PARAMETER="-A"

while getopts n: flag
do
    case "${flag}" in
        n) namespace=${OPTARG};;
    esac
done

PARAMETER="--namespace $namespace"
echo $PARAMETER
# Retrieve resource usage statistics from Kubernetes
kubectl top pods $PARAMETER