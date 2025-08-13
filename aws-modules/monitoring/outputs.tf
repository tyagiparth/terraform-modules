output "log_group_name" {
  value = aws_cloudwatch_log_group.my_log_group.name
}

output "cpu_alarm_name" {
  value = aws_cloudwatch_metric_alarm.cpu_alarm.alarm_name
}

output "response_time_alarm_name" {
  value = aws_cloudwatch_metric_alarm.response_time_alarm.alarm_name
}