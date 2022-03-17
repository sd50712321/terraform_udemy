terraform {
  backend "s3" {
    bucket = "terraform-state-f2ea"
    key    = "terraform/demo4"
  }
}