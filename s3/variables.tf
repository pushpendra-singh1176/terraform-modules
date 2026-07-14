variable "bucket_name" {
    description = "Name of the S3 bucket"
    type        = string 
   
   validation {
        condition     = length(var.bucket_name) >= 3 && length(trimspace(var.bucket_name)) <= 63
        error_message = "Bucket name must be be between 3 to 63 charector."
    }
}
variable  "tags" {
    description = "Tags for the S3 bucket"
    type        = map(string)
    default     = {}
}
variable "force_destroy" {
  description = "Delete bucket even if it contains objects"
  type        = bool
  default     = false
}
