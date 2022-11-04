variable "project_id" {
  description = "the name project id"
  type        = string
}




variable "env" {
  description = "the environment name"
  type        = string
}





variable "retry_policy" {
  description = "the retry policy if failure"
  type        = string
  default     = "RETRY_POLICY_RETRY"
}



variable "storage_bucket_object_name" {
  description = "the object name"
  type        = string
  default     = "code-functions"
}



variable "storage_bucket_object_source" {
  description = "the object source"
  type        = string
  default     = "code-functions/index.zip"
}





variable "region_name" {
  description = "the name region"
  type        = string
}






variable "vpc_connector" {
  description = "the vpc connector id"
  type        = string
  default     = "the vpc connector id"

}




variable "runtime_type" {
  description = "a programming language to use"
  type        = string
  default     = "python39"
}




variable "entry_point_name" {
  description = "the name entry point"
  type        = string
}




variable "storage_class_standard" {
  description = "the type class storage"
  type        = string
  default     = "STANDARD"
}




variable "description" {
  type    = string
  default = "the description here"
}




variable "cloud_functions_admin" {
  description = "the cloud functions admin"
  type        = string
  default     = "roles/cloudfunctions.admin"
}




variable "cloud_functions_invoker" {
  description = "the cloud functions invoker"
  type        = string
  default     = "roles/cloudfunctions.invoker"
}




variable "cloud_functions_developer" {
  description = "the cloud functions developer"
  type        = string
  default     = "roles/cloudfunctions.developer"
}




variable "cloud_functions_viewer" {
  description = "the cloud functions viewer"
  type        = string
  default     = "roles/cloudfunctions.viewer"
}




variable "members_allUsers" {
  description = "allowing all users with internet access"
  type        = list(any)
  default     = ["allUsers"]
}




variable "members_user" {
  description = "allowing email with google account"
  type        = list(any)
  default     = ["user:exemple@gamail.com"]
}




variable "members_allAuthenticatedUsers" {
  description = "allowing authenticated users in gcp project"
  type        = list(any)
  default     = ["allAuthenticatedUsers"]
}




variable "members_serviceAccount" {
  description = "allowing service account in gcp project"
  type        = list(any)
  default     = ["serviceAccount:seuserviceaccount@appspot.gserviceaccount.com"]
}




variable "members_group" {
  description = "allowing google email group"
  type        = list(any)
  default     = ["group:seugrupo@gmail.com"]
}




variable "members_domain" {
  description = "allowing a specific domain"
  type        = list(any)
  default     = ["domain:seudomain.com"]
}




variable "pub_sub_g2" {
  description = "the pub/sub secundary generation api"
  type        = string
  default     = "google.cloud.pubsub.topic.v1.messagePublished"
}




variable "pub_sub_topic" {
  description = "the pub/sub topic primary generation name "
  type        = string
}



variable "min_instance_count" {
  description = "min instance count pub sub"
  type        = string
  default     = "1"
}



variable "max_instance_count" {
  description = "max instance count pub sub"
  type        = string
  default     = "2"
}




variable "available_memory" {
  description = "available memory pub sub"
  type        = string
  default     = "256M"
}



variable "timeout_seconds" {
  description = "timeout seconds pub sub"
  type        = string
  default     = "60"
}




