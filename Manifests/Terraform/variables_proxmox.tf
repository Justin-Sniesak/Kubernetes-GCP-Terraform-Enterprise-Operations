variable "api_url" {
  description = "URL of the API"
  type        = string
  sensitive   = true 
}

variable "terraform_api_token" {
  description = "The ID and secret of the Terraform API token."
  type        = string
  sensitive   = true
}

variable "dev1_api_token" {
  description = "The ID and secret of the Developer_1 API token."
  type        = string
  sensitive   = true
}

variable "dev2_api_token" {
  description = "The ID and secret of the Developer_2 API token."
  type        = string
  sensitive   = true
}

variable "dev3_api_token" {
  description = "The ID and secret of the Developer_3 API token."
  type        = string
  sensitive   = true
}