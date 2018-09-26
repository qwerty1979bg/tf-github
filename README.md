# Terraform-kitchen example

This repository contains a way to test our terraform code with the Terraform-kitchen module

##Prerequisites:
Be a member of a GitHUB oragnization with proper rights.
Have a HitHUB token.

## Usage

1. [Install Terraform](https://www.terraform.io/intro/getting-started/install.html)
2. Clone this repository and `cd` into it.
3. Run the following:

Manual Terraform:
```
$ export TF_VAR_github_token=<your GitHub token>
$ terraform init
$ terraform apply
$ terraform destroy
```

Automatic kitchen-terraform test:
```
$ brew install rbenv
$ rbenv local 2.3.1
$ gem install bundler
$ bundle install
$ export TF_VAR_github_token=<your GitHub token>
$ kitchen test
```
