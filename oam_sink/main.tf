resource "aws_oam_sink" "this" {
  name = var.sink_name
}

resource "aws_oam_sink_policy" "this" {
  sink_identifier = aws_oam_sink.this.id

  policy = jsonencode({
    Version = "2012-10-17",
    Statement = [
      {
        Effect = "Allow",
        Action = [
          "oam:CreateLink",
          "oam:UpdateLink"
        ],
        Resource = "*",
        Principal = {
          AWS = "*"
        }
      }
    ]
  })
}