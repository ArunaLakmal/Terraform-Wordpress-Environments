remote_state {
  backend = "s3"

  config = {
    encrypt        = true
    bucket         = "tc-terraform-remote-state-for-pes-to-aws"
    key            = "${path_relative_to_include()}/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "tc-terraform-locks"
  }
}