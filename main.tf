provider "aws" {
  shared_config_files      = ["/home/abdullah_mustafa/.aws/config"]
  shared_credentials_files = ["/home/abdullah_mustafa/.aws/credentials"]
  profile                  = "rds-iam"
  region                   = "us-east-1"
}

