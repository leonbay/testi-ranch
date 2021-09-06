resource "google_bigquery_dataset" "dataset" {
  dataset_id                  = "example_dataset" #kenties variablena tämä
  description                 = "Potential correlation between covid and currencies"
  location                    = "EU" #kenties variablena tämä, ks. mikä päätettiin
  delete_contents_on_destroy = true #selvitä mikä meininki
  project = var.project_id

  access {
    role          = "OWNER" #selvitä mikä best practice
    group_by_email = #tee ryhmä tietyillä oikeuksilla
  }

}