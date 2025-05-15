variable "environment" {
  default = "prod"
}
variable "name" {
  default = "prod-composer"
}
variable "region" {
  default = "us-central1"
}
variable "image_version" {
  default = "composer-3-airflow-2.10.2-build.12"
}
variable "dag_bucket_name" {
  default = "prod-dag-bucket"
}
variable "project_id" {
  default = "made-for-gcp-459805"
}