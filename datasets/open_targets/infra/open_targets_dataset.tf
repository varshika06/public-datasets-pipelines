/**
 * Copyright 2021 Google LLC
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */


resource "google_bigquery_dataset" "open_targets_platform" {
  dataset_id  = "open_targets_platform"
  project     = var.project_id
  description = "Open-Targets dataset"
}

output "bigquery_dataset-open_targets_platform-dataset_id" {
  value = google_bigquery_dataset.open_targets_platform.dataset_id
}

resource "google_bigquery_dataset" "open_targets_genetics" {
  dataset_id  = "open_targets_genetics"
  project     = var.project_id
  description = "Open-Targets-Genetics dataset"
}

output "bigquery_dataset-open_targets_genetics-dataset_id" {
  value = google_bigquery_dataset.open_targets_genetics.dataset_id
}
