# EC2 Exiting VPC (Default)

Create EC2 with Default VPC and Subnet.

## Export AWS

```bash
export AWS_ACCESS_KEY_ID=xxxxx
export AWS_SECRET_ACCESS_KEY=xxxx
export AWS_REGION=us-east-1
```

## Install

```bash
terraform init
terraform apply -auto-approve -var="instance_type=t3.micro"
```