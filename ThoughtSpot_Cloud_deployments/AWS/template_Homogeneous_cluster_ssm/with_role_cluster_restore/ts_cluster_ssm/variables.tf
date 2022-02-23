variable "customer_name" {
  type        = string
  description = "The name of the Session Manager."
  default     = ""
}

variable "cluster_id" {
  type        = string
  description = "The cluster ID"
  default     = ""
}

variable "cluster_name" {
  type        = string
  description = "The cluster name."
  default     = ""
}

variable "alert_email" {
  type        = string
  description = "The email configured on cluster for alerts"
  default     = ""
}

variable "release" {
  type        = string
  description = "The release to be installed on the cluster"
  default     = ""
}

variable "subnet_id" {
  type        = string
  description = "The VPC Subnet ID to launch in."
  default     = ""
}

variable "vpc_id" {
  type        = string
  description = "The VPC ID."
  default     = ""
}

variable "ami" {
  default     = ""
  type        = string
  description = "The AMI to use for the TS instance."
}

variable "vpc_security_group_ids" {
  default     = []
  type        = list(string)
  description = "A list of security group IDs to associate with the instances"
}

variable "no_of_instance" {
  description = "The number of instance in cluster."
  default     = ""
}

variable "instance_type" {
  type        = string
  description = "The type of instance to start."
  default     = ""
}

variable "ssm_document_name" {
  default     = ""
  type        = string
  description = "The name of the document."
}

variable "s3_bucket_name" {
  default     = ""
  type        = string
  description = "The arn of the bucket to be used with ssm."
}

variable "user_data" {
  default     = ""
  type        = string
  description = "The user data to provide when launching the instance."
}

variable "iam_policy" {
  default     = ""
  type        = string
  description = "The policy document. This is a JSON formatted string."
}

variable "iam_path" {
  default     = "/"
  type        = string
  description = "Path in which to create the IAM Role and the IAM Policy."
}

variable "description" {
  default     = "Terraform TS installation "
  type        = string
  description = "The description of the all resources."
}
variable "tags" {
  default     = {}
  type        = map(string)
  description = "A mapping of tags to assign to all resources."
}
variable "root_vol_size" {
  type        = string
  description = "The size of root filesystem."
  default     = ""
}
variable "export_vol_size" {
  type        = string
  description = "The size of export partiton."
  default     = ""
}
variable "data_vol_size" {
  type        = string
  description = "The size of data disks."
  default     = ""
}

variable "s3_path_of_tar" {
  default     = ""
  type        = string
  description = "The path in S3 where tar files are kept."
}
variable "offline_ansible_tar" {
  default     = ""
  type        = string
  description = "File name of the ansible tar file."
}
variable "mount_target_host" {
  type        = string
  description = "NFS Target host name or ip"
}
variable "mount_target_dir" {
  type        = string
  description = "NFS remote mount directory"
}
variable "backup_subdir" {
  type        = string
  description = "Path of backup directory including child dir if any"
}
