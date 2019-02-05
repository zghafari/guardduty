# AWS GuardDuty Multi-Account Terraform Modules #

Terraform Modules for GuardDuty Master and Member Accounts

## Introduction

AWS GuardDuty supports multi-accounts via master and member accounts. This repository contains a module for the master account and one for the member account.

## Usage

Use the module in your terraform files:

    module "guardduty-master-module" {
      source = "github.com/zghafari/guardduty/mastermodule"

      member_account_emails  = ["member1@example.com","member2@example.com"]
      member_account_ids     = ["xxxxxxxxxxxx","xxxxxxxxxxxx"]
    }
    
    module "guardduty-member-module" {
      source = "github.com/zghafari/guardduty/membermodule"
    }

run `terraform init` to download the module.

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| member_account_emails | Email addresses for member accounts to join master| list | - | yes |
| member_account_ids | Account Ids of the member accounts to join master | list | - | yes |



<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Walk-through
http://aws-cloud.guru/guardduty-multi-account/

## Author

  [Zubin Ghafari](https://www.linkedin.com/in/zghafari/)
