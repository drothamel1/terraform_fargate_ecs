# Launch an ECS Cluster with Fargate and Terraform

## And don't make the mistake that I did!

View the screencast here: https://youtu.be/fb2zJlcE1bE

You can use files in this repo to deploy an ECS cluster with Fargate from Terraform. The variables make these files portable so that you won't have to do any customization on your end, unless you want/need to change naming conventions or aws regions. That being said, there are a few things you are going to need as prerequisites for this to work correctly:

1. Terraform installed on your local machine
2. An AWS account
3. A properly configured AWS account on your local environment
4. The good sense not to push your AWS credentials to GitHub (more on that below)

## 1. Clone this Repo and Change Into That Directory

The first thing you need to do is clone this repo to your local environment, and then change into that directory.

## 2. Make any customizations you might need

As I said above, the files in this repo are portable, as they are, so you don't necessarily *need* to change anything about them to successfully launch the Centos image and the ECS cluster. But that being said, there are some changes that you might *want* to make. Such as...

* If you need to change your AWS region, you can do so in the variables.tf file
* If you want to change any of the names of your subnets, VPC, or ECS cluster, you can do so in the corresponding files.
* Tf you need/want to change the CIDR ranges of the VPC or subnets, you can do so in the corresponding files.

## 3. Run the Terraform Commands

Once you have all the code just how you need it, you can run a

* ``Terraform init`` to initialize the backend
* ``Terraform fmt`` to get all your code beautified
* ``Terraform validate`` to make sure everything is valid
* ``Terraform plan`` to check all of the resources you're going to create
* ``Terraform apply --auto-approve`` to start the deployment

## 4. Verify Your Deployment

Once you've successfully deployed the infrastructure, you can head to the AWS console just to validate that everything is as it should be... Good job!

# WARNING: DON'T DO THIS-- and what to do if you do

I want to mention that these files assume that you have an AWS profile configured in your local environment. If you don't you'll need to enter your AWS credentials as a sensitive variable and put them in a secrets.tfvars file on your local directory. The .gitignore file in this repo is already set to ignore the secretes.tfvars file. BUT...

You might mess up and accidently publish your AWS credentials to GitHub. That's bad. Don't do that. I did, but here's how to fix it:

* AWS and GitHub will both notify you of your mistake and urge you to rotate your keys in AWS
* Rotate your keys via AWS IAM __immediately__
* Once you have rotated your keys, you will need to remove the KeyQuarantine policy that AWS has attached to your account

If you want to see how all of this works, and how to fix it, you can watch the screencast at the YouTube link at the top of this readme.
