from google.cloud import bigquery

client = bigquery.Client()

#Example function json payload required:
def dialogfunction(request):
    #request_json = request.get_json(silent=True)
    #approxlongitude = request_json.get("longitude")
    #approxlatitude = request_json.get("latitude")

    myresp = "Not found"
    query = f"SELECT per100k FROM `loppuprojekti-325208.ML_test_1.ML_global_forecast_results_with_per100k` WHERE location = 'Albania' ORDER BY per100k DESC LIMIT 1"
    query_job = client.query(query) 
    for row in query_job:
        myresp = row[0]
    return myresp