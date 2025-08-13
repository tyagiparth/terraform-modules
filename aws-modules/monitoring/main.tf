# modules/monitoring/main.tf
resource "aws_cloudwatch_log_group" "my_log_group" {
  name             = "my-log-group"
  retention_in_days = 7
}

resource "aws_cloudwatch_log_stream" "log_stream_ebs" {
  log_group_name = aws_cloudwatch_log_group.my_log_group.name
}

resource "aws_cloudwatch_log_stream" "log_stream_rds" {
  log_group_name = aws_cloudwatch_log_group.my_log_group.name
}

resource "aws_cloudwatch_metric_alarm" "cpu_alarm" {
  alarm_name                = "HighCPUUtilization"
  alarm_description         = "Alarm if CPU utilization exceeds 80%"
  namespace                 = "AWS/EC2"
  metric_name               = "CPUUtilization"
  dimensions                = { InstanceId = var.beanstalk_app_id }
  statistic                 = "Average"
  period                    = 300
  evaluation_periods        = 1
  threshold                 = 80
  comparison_operator       = "GreaterThanOrEqualToThreshold"
  alarm_actions             = [var.beanstalk_app_id]
}

resource "aws_cloudwatch_metric_alarm" "response_time_alarm" {
  alarm_name                = "HighResponseTime"
  alarm_description         = "Alarm if response time exceeds 2 seconds"
  namespace                 = "AWS/ElasticBeanstalk"
  metric_name               = "Latency"
  dimensions                = { EnvironmentName = var.env_name }
  statistic                 = "Average"
  period                    = 300
  evaluation_periods        = 1
  threshold                 = 2
  comparison_operator       = "GreaterThanOrEqualToThreshold"
  alarm_actions             = [var.beanstalk_app_id]
}


