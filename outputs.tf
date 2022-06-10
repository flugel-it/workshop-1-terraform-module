output "vpc_id" {
  description = "The ID of the VPC"
  value       = try(aws_vpc.main.id, "")
}

output "vpc_arn" {
  description = "Amazon Resource Name (ARN) of VPC"
  value       = try(aws_vpc.main.arn, "")
}
