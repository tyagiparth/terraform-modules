locals {
    # tflint-ignore: terraform_unused_declarations
  tags   = merge(var.tags, { Terraform = "true" })
}