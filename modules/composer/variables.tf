variable "name" {
  type        = string
  description = "Name of the composer environment"
}
variable "region" {
  type        = string
  description = "Region in which the composer environment is to be created"
}
variable "image_version" {
  type        = string
  description = "Airflow version of the composer environment"
}
variable "project_id" {
  type        = string
  description = "Project ID of the current working project"
}
variable "dag_bucket_name" {
  type        = string
  description = "Name of the bucket which stores the DAG's"
}