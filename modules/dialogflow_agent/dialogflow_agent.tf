resource "google_dialogflow_agent" "RoboBob" {
  display_name = "RoboBob" #required
  default_language_code = "en" #required
  time_zone = "Europe/Kaliningrad" #required
  avatar_uri = "https://www.clipartmax.com/png/small/140-1400962_vee-chatbot-meet-vee.png"
  enable_logging = true
  api_version = "API_VERSION_V2_BETA_1"
}

resource "google_dialogflow_intent" "MLdataForRoboBob" {
  project = var.project_id
  depends_on = [google_dialogflow_agent.RoboBob]
  display_name = "MLdataForRoboBob"
  webhook_state = "WEBHOOK_STATE_ENABLED"
  priority = 1
  training_phrases {
     parts {
         text = "Japan situation on 5.10.2021"
     }
     parts {
         text = "I want to go Sweden next Friday"
     }
     repeat_count = 1
  }

  parameters {
    id          = "param1"
    entity_type = "projects/-/locations/-/agents/-/entityTypes/sys.date"
  }

  labels  = {
      label1 = "value1",
      label2 = "value2"
   } 
}