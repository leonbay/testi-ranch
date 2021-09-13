from google.cloud import bigquery

client = bigquery.Client()

def dialogfunction(request):
    import json

    content_type = request.headers['content-type']
    if content_type == 'application/json':
        request_json = request.get_json(silent=True)
        geocountry = request_json['queryResult']['parameters']['geo-country']
        datetime = request_json['queryResult']['parameters']['date-time']

    query = f"SELECT per100k FROM `loppuprojekti-325208.ML_test_1.ML_global_forecast_results_with_per100k` WHERE location = '{geocountry}' AND forecast_timestamp = TIMESTAMP_TRUNC('{datetime}', DAY) LIMIT 1"
    query_job = client.query(query) 
    for row in query_job:
        myresp = str(round(row[0],2))
    finalresponse = f"The forecast for new cases in {geocountry} on {datetime[:10]} is {myresp} per 100 000 people."
    return json.dumps({'fulfillmentText': finalresponse})