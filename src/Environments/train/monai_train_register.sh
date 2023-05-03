#!/bin/bash

az ml environment create --conda-file monai_train_env.yaml --registry-name "monai-assets" --name "train-env" --image "mcr.microsoft.com/azureml/openmpi4.1.0-cuda11.1-cudnn8-ubuntu20.04:latest"
