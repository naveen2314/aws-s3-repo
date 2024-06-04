s3_buckets = {
  first-iac-bucket = {
    bucket = "637423167506-test-bucket"
    versioning = {
      enabbled = true
    }
    tags = {
      env = "test"
    }
    logging = {
      logging_bucket = "637423167506-test-bucket"
      target_bucket  = "637423167506-s3-logging"
      target_prefix  = "logs/"
    }
  }


}
