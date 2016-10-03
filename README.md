# docker-json-server

Simple json-server using https://github.com/typicode/json-server. Generates data at the people endpoint for testing a REST api.


Example Docker Command:
  docker run --name testREST -p 3005:3000 -d lscreager/docker-json-server:latest

You can see the avlaiable http verbs and other information at http://jsonplaceholder.typicode.com/.

There is an index file, go to <server>:3005/ to see some of the api options.
