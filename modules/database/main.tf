resource "google_bigquery_dataset" "dataset" {
  dataset_id                  = "Covid & Currency" #kenties variablena tämä
  description                 = "Potential correlation between covid and currencies"
  location                    = var.region
  delete_contents_on_destroy = false #selvitä mikä meininki
  project = var.project_id

  access {
    role          = "OWNER" #selvitä mikä best practice
    group_by_email = #tee ryhmä ml-tiimille
  }
  access {
    role = "VIEWER" #pipelinelle omat jutut ym., lisää access-lohkoja tarvittaessa
    group_by_email = #tee ryhmä pipeline-tiimille
  }

}

resource "google_bigquery_table" "muuta_nimi" {
  dataset_id = google_bigquery_dataset.dataset.dataset_id
  table_id   = "joku_kuvaava_nimi"

  schema = <<EOF
[
  {
    "name": "permalink",
    "type": "STRING",
    "mode": "NULLABLE",
    "description": "The Permalink"
  },
  {
    "name": "state",
    "type": "STRING",
    "mode": "NULLABLE",
    "description": "State where the head office is located"
  }
]
EOF

}