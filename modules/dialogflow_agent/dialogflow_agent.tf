# resource "google_dialogflow_agent" "RoboBob" {
#   display_name = "RoboBob" #required
#   default_language_code = "en" #required
#   time_zone = "Europe/Kaliningrad" #required
#   avatar_uri = "https://www.clipartmax.com/png/small/140-1400962_vee-chatbot-meet-vee.png"
#   enable_logging = true
#   api_version = "API_VERSION_V2_BETA_1"
# }

# resource "google_dialogflow_intent" "MLdataForRoboBob" {
#   project = google_project.agent_project.project_id
#   depends_on = [google_dialogflow_agent.basic_agent]
#   display_name = "full-intent"
#   webhook_state = "WEBHOOK_STATE_ENABLED"
#   priority = 1
#   is_fallback = false
#   ml_disabled = true
#   action = "some_action"
#   reset_contexts = true
#   input_context_names = ["projects/${google_project.agent_project.project_id}/agent/sessions/-/contexts/some_id"]
#   events = ["some_event"]
#   default_response_platforms = ["FACEBOOK","SLACK"]
# }