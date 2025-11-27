# Launch AWS EC2 with Terraform (using Bash) for 3 different environments
**In this project we are using Terraform to launch AWS EC2 machines through a simple Bash Script.**</br>
**We have configured Terraform in such a way that it will help to launch servers for 3 different environment:**</br>
- Default
- Development
- Production
### Before executing it, There are some prerequisites:
## Install Terraform
**To install Terraform we can follow official Docs - [Install Terraform](https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli)**
## Create IAM user with EC2 Full Access and retrieve Access Key
![Screenshot to create IAM user.](https://github.com/sadiqueiqbal28/terraform-bash-launch-ec2/blob/main/images/1.png)
![Screenshot to give EC2 Access](https://github.com/sadiqueiqbal28/terraform-bash-launch-ec2/blob/main/images/2.png)
![Screenshot to retreive ACCESS KEY](https://github.com/sadiqueiqbal28/terraform-bash-launch-ec2/blob/main/images/3.png)
## Install AWS CLI
**To install AWS CLI we can refer to official Docs - [Install AWS-CLI](https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html)**
## Configure AWS KEY
**Execute the following command:**
`aws configure`</br>
Now enter the obtain Access ID and Access Key</br>
![Screenshot to configure Access Key](https://github.com/sadiqueiqbal28/terraform-bash-launch-ec2/blob/main/images/4.png)
## Generate ssh key
**To generate ssh key execute the following command:**
`ssh-keygen -t rsa`</br>
This will generate **rsa** type ssh key.</br>
Make sure to name the key **terr_env**
## Now we are ready to execute the script
![Launching Script](https://github.com/sadiqueiqbal28/terraform-bash-launch-ec2/blob/main/images/5.png)
![Success](https://github.com/sadiqueiqbal28/terraform-bash-launch-ec2/blob/main/images/6.png)