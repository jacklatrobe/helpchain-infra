# HelpChain-Infra: backend.tf

terraform {
  backend "s3" {
    bucket         = "<your-s3-bucket-name>"
    key            = "<your-state-file-key>"
    region         = "<aws-region>"
    access_key     = "<your-aws-access-key>"
    secret_key     = "<your-aws-secret-key>"
    dynamodb_table = "<your-lock-table-name>"
    encrypt        = true
  }
}
