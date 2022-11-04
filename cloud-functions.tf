/* CLOUD FUNCTIONS 2ª GERACAO COM EVENT TRIGGER PUB/SUB */
resource "google_cloudfunctions2_function" "cloudfunctions_g2_02" {
  provider    = google-beta.beta
  name        = "fcnt-${var.project_id}-${var.env}-02"
  location    = var.region_name
  description = var.description

  build_config {
    runtime     = var.runtime_type
    entry_point = var.entry_point_name
    source {
      storage_source {
        bucket = google_storage_bucket.storage_bucket.name
        object = google_storage_bucket_object.storage_bucket_object.name
      }
    }
  }

  event_trigger {
    trigger_region = var.region_name
    event_type     = var.pub_sub_g2
    pubsub_topic   = var.pub_sub_topic
    retry_policy   = var.retry_policy
  }
  service_config {
    min_instance_count = var.min_instance_count
    max_instance_count = var.max_instance_count
    available_memory   = var.available_memory
    timeout_seconds    = var.timeout_seconds

    /* (Se voce quiser usar vpc connector na function, basta descomentar as linhas abaixo e infomar o id do vpc connector) */
    #vpc_connector                = var.vpc_connector
    #vpc_connector_egress_settings = "ALL_TRAFFIC"
  }


  depends_on = [google_storage_bucket_object.storage_bucket_object]
  labels = {
    "enviroment" = var.env
  }

}

