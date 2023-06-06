terraform {
  backend "s3" {
    bucket = "redbucket1996"
    key    = "backend"
    region = "ap-south-1"
    dynamodb_table = "sampath"
  }
}

