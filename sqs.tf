resource "aws_sqs_queue" "terraform_queue" {
  name                      = "Whizlabs_sqs_queue"
  delay_seconds             = 90
  max_message_size          = 2048
  message_retention_seconds = 86400
  receive_wait_time_seconds = 10
  depends_on = [
  aws_lambda_function.test_lambda
]
  tags = {
    Environment = "test"
  }
}
#Add Lambda trigger from sqs
resource "aws_lambda_event_source_mapping" "consumer-sqs" {
  event_source_arn = aws_sqs_queue.terraform_queue.arn
  enabled          = true
  function_name    = aws_lambda_function.test_lambda.arn

  depends_on = [
    aws_sqs_queue.terraform_queue
  ]
}