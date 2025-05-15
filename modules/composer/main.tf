resource "google_service_account" "custom_service_account" {
  account_id   = "${var.name}-service-account"
  display_name = "Composer Service Account"
}

resource "google_project_iam_member" "custom_service_account_role" {
  project    = var.project_id
  member     = format("serviceAccount:%s", google_service_account.custom_service_account.email)
  role       = "roles/composer.worker"
  depends_on = [google_service_account.custom_service_account]
}

resource "google_storage_bucket" "composer-dag-bucket" {
  name          = var.dag_bucket_name
  location      = var.region
  force_destroy = true
}


resource "google_composer_environment" "composer" {
  name   = var.name
  region = var.region
  config {

    software_config {
      image_version = var.image_version

    }
    node_config {
      service_account = google_service_account.custom_service_account.email
    }
  }
  storage_config {
    bucket = google_storage_bucket.composer-dag-bucket.name
  }
  depends_on = [google_service_account.custom_service_account, google_project_iam_member.custom_service_account_role, google_storage_bucket.composer-dag-bucket]
}
