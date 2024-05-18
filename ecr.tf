resource "aws_ecr_repository" "nodejs-app" {
  name = "my-first-ecr-repo"
  tags = {
    Name="latest_ecr"
  }
}