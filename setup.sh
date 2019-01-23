#!env bash

curl -X PUT localhost:9200/playgrounds -d '{"mappings":{"_doc": {"properties": {"location": {"type": "geo_point"}}}}}'

curl -X POST localhost:9200/playgrounds/location/1 -H 'Content-Type: application/json' \
     -d '{"name": "Dude Chilling Park", "address": "123 Main St", "city": "Vancouver", "province": "BC", "location": [49.264087, -123.096311]}'

curl -X POST localhost:9200/playgrounds/location/2 -H 'Content-Type: application/json' \
  -d '{"name": "Queen Elizabeth Park", "address": "227-281 W 37th Ave", "city":"Vancouver", "province":"BC","location": [49.240963, -123.111975]}'

curl -X POST localhost:9200/playgrounds/location/3 -H 'Content-Type: application/json' \
     -d '{"name": "Buckman Field Park", "address": "300 NE 12th Ave", "city":"Portland", "province":"OR", "location": [45.525777, -122.651551]}'
