from google.cloud import bigquery

client = bigquery.Client()

def dialogfunction(request):
    import json
    geocountry = "Not found"
    content_type = request.headers['content-type']
    if content_type == 'application/json':
        request_json = request.get_json(silent=True)
        geocountry = request_json['queryResult']['parameters']['geo-country']

    myresp = "Not found"
    query = f"SELECT per100k FROM `loppuprojekti-325208.ML_test_1.ML_global_forecast_results_with_per100k` WHERE location = '{geocountry}' ORDER BY per100k DESC LIMIT 1"
    query_job = client.query(query) 
    for row in query_job:
        myresp = str(row[0])
    
    return json.dumps({'fulfillmentText': myresp})