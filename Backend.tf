terraform {
  backend "s3" {
    encrypt        = true
    bucket         = "chernoinfinitytest"
    dynamodb_table = "terraform-state-lock-dynamo"
    key            = "terraform.tfstate"
    region         = "eu-central-1"
  }
}
