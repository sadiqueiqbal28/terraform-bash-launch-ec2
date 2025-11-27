#!/bin/bash

echo "Do You want to plan or apply the Infra?"
echo "Enter (p/p) to plan"
echo "Enter (a/A) to apply"
read -p "Enter Your choice: " opt

echo "Which environment?"
echo "def - for Default"
echo "dev - for Development"
echo "prod - for Production"
read -p "Enter choice for environment: " env_choice
env_choice="${env_choice,,}"
opt="${opt,,}"
case $opt in
	p)
		if [[ "$env_choice" == "def" ]]; then
			terraform plan
		elif [[ "$env_choice" == "prod" ]]; then
			terraform plan -var-file=prod.tfvars
        elif [[ "$env_choice" == "dev" ]]; then
            terraform plan -var-file=dev.tfvars
        else
            echo "Invalid Input"
        fi
        ;;

    a)
        if [[ "$env_choice" == "def" ]]; then
			terraform apply -auto-approve
		elif [[ "$env_choice" == "prod" ]]; then
			terraform apply -var-file=prod.tfvars -auto-approve
        elif [[ "$env_choice" == "dev" ]]; then
            terraform apply -var-file-dev.tfvars -auto-approve
        else
            echo "Invalid Input"
        fi
        ;;
    *)
        echo "Invalid Input"
        echo "Use (p/p) for Plan - (a/A) for apply"
        ;;
esac