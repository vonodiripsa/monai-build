#!/bin/bash

# source scripts/config_files/config.sh
# az ml environment create --registry-name ${registry_name} --file environments/${nvidia_product}/${container}/${nvidia_product}.yml

az ml environment create --conda-file train-env.yaml --registry-name "monai-assets" --name "train-env" --image "mcr.microsoft.com/azureml/openmpi4.1.0-cuda11.1-cudnn8-ubuntu20.04:latest"

az ml environment create --conda-file inference-env.yaml --registry-name "monai-assets" --name "inference-env" --image "mcr.microsoft.com/azureml/openmpi4.1.0-cuda11.1-cudnn8-ubuntu20.04:latest"