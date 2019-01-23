Biba Technical Test
===================

This technical test is to create a search service that uses ElasticSearch as
it's search storage.

It needs to provide the following routes:

* `GET /playgrounds` 
    * search for playgrounds by name, address, city, province, or within a
      bounding box
    * should accept the search parameters as query variables
  
* `PUT /playgrounds/<id>`
    * add a new playground document to the search index
    * should accept a JSON document in the request body

This repo comes with a `docker-compose.yml` that will start up two elasticsearch
containers in a cluster, and a `setup.sh` that will create a few documents in
the index.

Within elasticsearch, the index name is `playgrounds`, the type name is `location`.


## First Steps

1. Install [docker](https://www.docker.com/get-started) and
   [docker-compose](https://docs.docker.com/compose/install/)
2. Add at least three more playgrounds to the search index. See
   [setup.sh](setup.sh) to see how to add documents to the search index using
   CURL.
3. Create a service in [docker-compose.yml](docker-compose.yml) for your
   service.
   
## Docker Compose Hints

* Bring up all the services defined in the `docker-compose.yml` with
  `docker-compose up`
* Restart the container for your service with `docker-compose restart <service
  name>` (the name is the key just below services in the `docker-compose.yml`,
  for example the two elasticsearch services are named `elasticsearch` and
  `elasticsearch2`)
* To rebuild your image from scratch, use `docker-compose stop <name> &&
  docker-compose rm <name> && docker-compose up -d --no-deps <name>` to
  completely rebuild the image. Alternatively, if using a scripting language you
  can have docker mount the source code so that you don't have to rebuild the
  image.
* There are already tons of images out there for most images, or you can get off
  and running with really simple Docker images. For example, it's pretty
  straightforward to get up and running with
  [Go](https://blog.codeship.com/building-minimal-docker-containers-for-go-applications/),
  [Flask](https://runnable.com/docker/python/docker-compose-with-flask-apps),
  [Java](https://www.baeldung.com/dockerizing-spring-boot-application), and
  pretty much every other language or framework out there.  
