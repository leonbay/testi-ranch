resource "google_bigquery_dataset" "dataset" {
  dataset_id                  = "Covid_Currency"
  description                 = "Potential correlation between covid and currencies"
  location                    = var.region
  project = var.project

  /* access {
    role          = "OWNER" #selvitä mikä best practice
    group_by_email = #tee ryhmä ml-tiimille
  }
  access {
    role = "VIEWER" #pipelinelle omat jutut ym., lisää access-lohkoja tarvittaessa
    group_by_email = #tee ryhmä pipeline-tiimille
  } */

}

resource "google_bigquery_table" "covid-table" {
  dataset_id = google_bigquery_dataset.dataset.dataset_id
  table_id   = "Covid-data"
  #bq show --format=prettyjson loppuprojekti-325208:testidata.covid_data_machine_learning | jq '.schema.fields'
  #tähän tapaan vaikka public datasetistä kamaa
  schema = <<EOF
[
  {
    "name": "iso_code",
    "type": "STRING"
  },
  {
    "name": "continent",
    "type": "STRING"
  },
  {
    "name": "location",
    "type": "STRING"
  },
  {
    "name": "date",
    "type": "DATETIME"
  },
  {
    "name": "total_cases",
    "type": "FLOAT"
  },
  {
    "name": "new_cases",
    "type": "FLOAT"
  },
  {
    "name": "new_cases_smoothed",
    "type": "FLOAT"
  },
  {
    "name": "total_deaths",
    "type": "FLOAT"
  },
  {
    "name": "new_deaths",
    "type": "FLOAT"
  },
  {
    "name": "new_deaths_smoothed",
    "type": "FLOAT"
  },
  {
    "name": "total_cases_per_million",
    "type": "FLOAT"
  },
  {
    "name": "new_cases_per_million",
    "type": "FLOAT"
  },
  {
    "name": "new_cases_smoothed_per_million",
    "type": "FLOAT"
  },
  {
    "name": "total_deaths_per_million",
    "type": "FLOAT"
  },
  {
    "name": "new_deaths_per_million",
    "type": "FLOAT"
  },
  {
    "name": "new_deaths_smoothed_per_million",
    "type": "FLOAT"
  },
  {
    "name": "reproduction_rate",
    "type": "FLOAT"
  },
  {
    "name": "icu_patients",
    "type": "FLOAT"
  },
  {
    "name": "icu_patients_per_million",
    "type": "FLOAT"
  },
  {
    "name": "hosp_patients",
    "type": "FLOAT"
  },
  {
    "name": "hosp_patients_per_million",
    "type": "FLOAT"
  },
  {
    "name": "weekly_icu_admissions",
    "type": "FLOAT"
  },
  {
    "name": "weekly_icu_admissions_per_million",
    "type": "FLOAT"
  },
  {
    "name": "weekly_hosp_admissions",
    "type": "FLOAT"
  },
  {
    "name": "weekly_hosp_admissions_per_million",
    "type": "FLOAT"
  },
  {
    "name": "new_tests",
    "type": "FLOAT"
  },
  {
    "name": "total_tests",
    "type": "FLOAT"
  },
  {
    "name": "total_tests_per_thousand",
    "type": "FLOAT"
  },
  {
    "name": "new_tests_per_thousand",
    "type": "FLOAT"
  },
  {
    "name": "new_tests_smoothed",
    "type": "FLOAT"
  },
  {
    "name": "new_tests_smoothed_per_thousand",
    "type": "FLOAT"
  },
  {
    "name": "positive_rate",
    "type": "FLOAT"
  },
  {
    "name": "tests_per_case",
    "type": "FLOAT"
  },
  {
    "name": "tests_units",
    "type": "STRING"
  },
  {
    "name": "total_vaccinations",
    "type": "FLOAT"
  },
  {
    "name": "people_vaccinated",
    "type": "FLOAT"
  },
  {
    "name": "people_fully_vaccinated",
    "type": "FLOAT"
  },
  {
    "name": "total_boosters",
    "type": "FLOAT"
  },
  {
    "name": "new_vaccinations",
    "type": "FLOAT"
  },
  {
    "name": "new_vaccinations_smoothed",
    "type": "FLOAT"
  },
  {
    "name": "total_vaccinations_per_hundred",
    "type": "FLOAT"
  },
  {
    "name": "people_vaccinated_per_hundred",
    "type": "FLOAT"
  },
  {
    "name": "people_fully_vaccinated_per_hundred",
    "type": "FLOAT"
  },
  {
    "name": "total_boosters_per_hundred",
    "type": "FLOAT"
  },
  {
    "name": "new_vaccinations_smoothed_per_million",
    "type": "FLOAT"
  },
  {
    "name": "stringency_index",
    "type": "FLOAT"
  },
  {
    "name": "population",
    "type": "FLOAT"
  },
  {
    "name": "population_density",
    "type": "FLOAT"
  },
  {
    "name": "median_age",
    "type": "FLOAT"
  },
  {
    "name": "aged_65_older",
    "type": "FLOAT"
  },
  {
    "name": "aged_70_older",
    "type": "FLOAT"
  },
  {
    "name": "gdp_per_capita",
    "type": "FLOAT"
  },
  {
    "name": "extreme_poverty",
    "type": "FLOAT"
  },
  {
    "name": "cardiovasc_death_rate",
    "type": "FLOAT"
  },
  {
    "name": "diabetes_prevalence",
    "type": "FLOAT"
  },
  {
    "name": "female_smokers",
    "type": "FLOAT"
  },
  {
    "name": "male_smokers",
    "type": "FLOAT"
  },
  {
    "name": "handwashing_facilities",
    "type": "FLOAT"
  },
  {
    "name": "hospital_beds_per_thousand",
    "type": "FLOAT"
  },
  {
    "name": "life_expectancy",
    "type": "FLOAT"
  },
  {
    "name": "human_development_index",
    "type": "FLOAT"
  },
  {
    "name": "excess_mortality",
    "type": "FLOAT"
  }
]
EOF

}