module "s3_bucket" {
  source = "git::https://github.com/naveen2314/aws-s3-module.git?ref=72333a4"

  for_each = var.s3_buckets

  bucket     = lookup(each.value, "bucket")
  tags       = lookup(each.value, "tags")
  versioning = lookup(each.value, "versioning")
  logging = {
    logging_bucket = lookup(each.value, "logging_bucket", "")
    target_bucket  = lookup(each.value, "target_bucket", "")
    target_prefix  = lookup(each.value, "target_prefix", "")
  }


}
