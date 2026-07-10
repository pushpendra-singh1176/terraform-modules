variable "bucket_name" {
    description = "Name of the S3 bucket"
    type        = string 
   
   validation {
        condition     = length(var.bucket_name) > 3
        error_message = "Bucket name must be at least 4 characters long."
    }
}
variable  "tags" {
    description = "Tags for the S3 bucket"
    type        = map(string)
}