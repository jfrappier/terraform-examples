#To see the actual value of the secret run terraform show -json otherwise the value will be masked. This should be used only for testing
terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "3.35.0"
    }
  }
}

provider "aws" {
  # Configuration options
  region = "us-west-2"
}

data "aws_secretsmanager_secret" "test_record" {
  arn = "arn:aws:secretsmanager:us-west-2:737683118743:secret:dev/engineering/test/record-Mg7ilg"
}

data "aws_secretsmanager_secret_version" "test_record" {
  secret_id = data.aws_secretsmanager_secret.test_record.id
}

output "test_record" {
  description = "Value of secrets manager arn"
  value       = data.aws_secretsmanager_secret_version.test_record
  sensitive = true
}
