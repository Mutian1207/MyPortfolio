# Generate static site files
hugo

# Upload files to S3 bucket  set the bucket to public read access
aws s3 sync public/ s3://mutian-ling.net --acl public-read

# set index and error pages
aws s3 website s3://mutian-ling.net --index-document index.html --error-document 404.html

# Optionally, invalidate CloudFront cache (if using CloudFront)
# aws cloudfront create-invalidation --distribution-id your-cloudfront-distribution-id --paths "/*"
