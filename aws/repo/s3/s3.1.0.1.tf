resource "aws_s3_bucket" "descomplica" {
  bucket = "descomplicandobucket"
  acl    = "private"
}

resource "aws_s3_bucket_policy" "descomplica" {
  bucket = aws_s3_bucket.descomplica.id

  policy = jsonencode({
    Version = "2012-10-17",
    Statement = [
      {
        Effect = "Allow",
        Principal = "*",
        Action = [
          "s3:GetObject"
        ],
        Resource = "${aws_s3_bucket.descomplica.arn}/*"
      }
    ],
  })
}
