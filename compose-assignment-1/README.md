SF Food Trucks
===

Download source code from: https://github.com/tel4vn/docker_basic/tree/master/compose-assignment-1

1. Build the flask app base on Dockerfile
2. Create the app with this image above:
+ Create bridge network foodtrucks-net use for new containers
+ Start the ES container
    + Run a elasticsearch base on docker.elastic.co/elasticsearch/elasticsearch:6.3.2
    + Run of them --detach (or -d ), name them with --name es on 9200:9200 and 9300:9300
    + When elasticsearch use the --env option (or -e ) to pass in discovery.type=single-node
+ Start the flask app container
    + Run the falsk app base on this image above
    + Run of them --detach (or -d ), name them with --name es on 5000:5000
3. Implement docker-compose with build step for this project