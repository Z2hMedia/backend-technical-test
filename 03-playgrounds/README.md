Playgrounds
========

This is a full-stack application that allows a user to keep track of playgrounds
and weather.

The application should do the following:

* have a backend that provides CRUDL for playgrounds with the following
  attributes:
  * name
  * address
  * coordinates
* the application should only accept name & address, and use the Google Maps Geocoding API to fetch the coordinates of the playground using the address  
* store the playgrounds in a some kind of storage (database, nosql store,
  whatever)
* one extra route that will fetch and store the last 7 days of weather information using the [OpenWeather API](https://openweathermap.org/api)
  * it should only store information for days it doesn't have info for yet, eg,
    if the weather information is fetched today for a brand-new playground, it
    should store all 7 days of data. If the weather information is fetched
    tomorrow, it should only be storing one more day of data.
* one extra route that will find the playgrounds closest to a given latitude and
    longitude, ordered by distance to the given point    


## Backend

The backend should be written in Go.

## Front-End

The front-end should be created using ReactJS.

# Bonus Points

* the application should create pubsub events when a playground is created,
  updated, or deleted
* the application should look up additional information in the front-end about a
  given playground. Use your imagination. Some examples of things to look up:
  * census information
  * nearby places, such as coffee shops, schools, etc
  * walkscore
* a route that will fetch the 3-day weather forecast for a given playground
* a Google Maps page in the front-end that displays playgrounds on the map

  
  
