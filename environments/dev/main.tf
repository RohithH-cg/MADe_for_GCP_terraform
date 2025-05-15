module "dev-composer-env" {
  source          = "../../modules/composer"
  name            = var.name
  region          = var.region
  image_version   = var.image_version
  dag_bucket_name = var.dag_bucket_name
  project_id      = var.project_id
}
