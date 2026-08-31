resource "aws_cloudwatch_metric_alarm" "high_cpu" {
  alarm_name          = "${var.app_name}-high-cpu"
  comparison_operator = "GreaterThanThreshold"
  evaluation_periods   = 2
  metric_name         = "CPUUtilization"
  namespace           = "AWS/EC2"
  period              = 300
  statistic           = "Average"
  threshold           = 80
  alarm_description   = "Triggers if average CPU usage stays above 80% for 10 minutes"

  dimensions = {
    AutoScalingGroupName = aws_elastic_beanstalk_environment.env.autoscaling_groups[0]
  }
}

resource "aws_cloudwatch_metric_alarm" "environment_health" {
  alarm_name          = "${var.app_name}-env-degraded-health"
  comparison_operator = "GreaterThanThreshold"
  evaluation_periods   = 1
  metric_name         = "EnvironmentHealth"
  namespace           = "AWS/ElasticBeanstalk"
  period              = 300
  statistic           = "Maximum"
  threshold           = 15
  alarm_description   = "Triggers if the Elastic Beanstalk environment health degrades"

  dimensions = {
    EnvironmentName = aws_elastic_beanstalk_environment.env.name
  }
}
