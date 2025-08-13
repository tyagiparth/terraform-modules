output "env_name" {
  value = aws_elastic_beanstalk_environment.my_env.name
}

output "env_url" {
  value = aws_elastic_beanstalk_environment.my_env.endpoint_url
}

output "app_id" {
  value = aws_elastic_beanstalk_application.my_app.application_id
}