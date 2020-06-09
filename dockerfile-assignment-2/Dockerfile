# Your supermarket company has a simple web service built on nginx that serves a static list of fresh fruit available in their stores. 
# They want to run this service as a Docker container, but first they need you to build a Docker image for this service.

# You will find a directory at ~/fruit-list/. The files needed to create the image are in that directory. 
# Create a Dockerfile to define the image according to the provided specifications, 
# then test the image by running a container in detached mode and verifying that you an access the fresh fruit data from the application.

# The image should meet the following specifications:

# Use nginx tag 1.15.8 as the base image.
# Add the static fresh fruit data to the image so that it will be served by the nginx server. The data file is located on the server at static/fruit.json under the project directory. Add this file to the image at the location /usr/share/nginx/html/fruit.json.
# Add the nginx configuration file. This file is located on the server in the project directory and is called nginx.conf. Add this file to the image at /etc/nginx/nginx.conf.
# The image should expose port 80.
# Use the following as the default command: nginx -g daemon off;.
# Build the image with the tag fruit-list:1.0.0
# Once you have built the image you should be able to test it by running it as a container:

# docker run --name fruit-list -d -p 8080:80 fruit-list:1.0.0
# Verify that the container serves the required data by making a request to it on port 8080. If everything is set up correctly, you should get a JSON list of fruits.

# curl localhost:8080
# If you get stuck, feel free to check out the solution video, or the detailed instructions under each objective. Good luck!