resource "google_dialogflow_agent" "full_agent" {
  display_name = "dialogflow-agent" #required
  default_language_code = "en" #required
  supported_language_codes = ["fr","de","es"]
  time_zone = "America/New_York" #required
  description = "Example description."
  avatar_uri = "https://cloud.google.com/_static/images/cloud/icons/favicons/onecloud/super_cloud.png"
  enable_logging = true
  match_mode = "MATCH_MODE_ML_ONLY"
  classification_threshold = 0.3
  api_version = "API_VERSION_V2_BETA_1"
  tier = "TIER_STANDARD"
}

resource "google_dialogflow_agent" "basic_agent" {
  display_name = "example_agent"#required
  default_language_code = "en"
  time_zone = "America/New_York"
}

resource "google_dialogflow_entity_type" "basic_entity_type" {
  depends_on = [google_dialogflow_agent.basic_agent]
  display_name = ""#required
  kind = "KIND_MAP"#required
  entities {
    value = "value1"
    synonyms = ["synonym1","synonym2"]
  }
  entities {
    value = "value2"
    synonyms = ["synonym3","synonym4"]
  }
}