s3_buckets = {
  first-iac-bucket = {
    bucket = "637423167506-test-bucket"
    tags = {
      env = "test"
    }
    logging = {
      logging_bucket = "637423167506-test-bucket"
      target_bucket  = "637423167506-s3-logging"
      target_prefix  = "logs/"
    }
  }

  second-iac-bucket = {
    bucket = "637423167506-second-test-bucket"
    tags = {
      env = "test"
    }
    logging = {
      logging_bucket = "637423167506-second-test-bucket"
      target_bucket  = "637423167506-s3-logging"
      target_prefix  = "logs/"
    }
  }

}
