output "s3_bucket_name" {
  description = "The generated name of the private S3 bucket"
  value       = aws_s3_bucket.portfolio.id
}

output "cloudfront_distribution_id" {
  description = "The ID of the CloudFront distribution (for CI/CD cache invalidation)"
  value       = aws_cloudfront_distribution.portfolio.id
}

output "cloudfront_distribution_domain_name" {
  description = "The live HTTPS URL for your portfolio"
  value       = "https://${aws_cloudfront_distribution.portfolio.domain_name}"
}
