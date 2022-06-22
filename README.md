# AWS VPC module

## Description
This module provides an AWS VPC resource. Amazon Virtual Private Cloud (VPC) is a service that lets you launch AWS resources in a logically isolated virtual network that you define. You have complete control over your virtual networking environment, including selection of your own IP address range, creation of subnets, and configuration of route tables and network gateways.

## Requirements
These are the requirements for this module.

|    | Terraform |
|:--:|-----------|
| >= |   1.0.11   |

|    |    AWS    |
|:--:|-----------|
| >= |  4.15.1   |

## Usage

### Single VPC

```hcl
module "vpc-module" {
  source  = "git@github.com:flugel-it/workshop-vpc.git?ref=v1.0"

  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"
  tags = {
    Name = "main"
  }

}
```

## Parameters or Configuration

In the `variables.tf` file we can declare:

|               | Default Value |     Type    |                    Description                    |
|:-------------:|:-------------:|:-----------:|:-------------------------------------------------:|
|     **region**    |       us-east-1      |    string   |  AWS region.  |
|     **vpc_cidr**    |       ""      |    string   |  The CIDR block for the VPC.  |
|     **instance_tenancy**    |       default      |    string   |  Tenancy of instances spin up within VPC.  |
|     **vpc_tags**    |       ""      |    map   |  The tags of the VPC.  |
|     **subnet_tags**    |       ""      |    map   |  The tags of the subnet.  |
|     **subnet_cidr**    |       ""      |    string   |  The CIDR block for the subnet.  |


## Outputs
|     Name          |      Description    |
|:-------------:|:-------------:|
|     **vpc_id**    | The ID of the VPC. |
|     **vpc_arn**    | The Amazon Resource Name (ARN) of the VPC. |

## Testing

In order to test this repository you must first install all dependencies:

``` 
cd test
go get -v -d -t ./... 
```

Then, you can execute the tests, from inside the `test` folder:

```
go test -v -timeout 10m
```
