# modules/beanstalk/main.tf
resource "aws_elastic_beanstalk_application" "my_app" {
  name        = var.app_name
  description = var.description
}

resource "aws_elastic_beanstalk_application_version" "app_version" {
  application   = aws_elastic_beanstalk_application.my_app.name
  version_label = var.version_label
  s3_bucket     = var.s3_bucket
  s3_key        = var.s3_key
}

resource "aws_elastic_beanstalk_environment" "my_env" {
  application           = aws_elastic_beanstalk_application.my_app.name
  version_label         = aws_elastic_beanstalk_application_version.app_version.version_label
  solution_stack_name   = var.solution_stack_name
  
  setting {
    namespace = "aws:elasticbeanstalk:application:environment"
    name      = "DATABASE_URL"
    value     = "mysql://${var.db_endpoint}"
  }

  setting {
    namespace = "aws:elasticbeanstalk:application:environment"
    name      = "S3_BUCKET"
    value     = var.s3_bucket
  }
}

