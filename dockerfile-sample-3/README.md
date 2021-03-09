#"ONBUILD" — Dockerfile command

How to build the base image ?

Build the app:on-build with Dockerfile on base-image folder:
```sh
$ cd base-image
$ docker build -t app:on-build .
```

Run the container with app:on-build image and still see the default nginx page:
```sh
$ docker container run -d —-name app -p 8080:80 app:on-build
```

As you can see, “index.html” is not copied in base image. 
Stop the container:
```sh
$ docker container stop app
```

After that, build image for service 1 base on app:on-build image
```sh
$ cd service-1
$ docker build -t service-1:0.1 -f Dockerfile .
```

Run the container with service-1:0.1 image and our latest index.html file is copied in a new build:
```
docker container run -d —-name app-1 -p 8080:80 service-1:0.1
```

Do the same thing with service-2, we will have the image and container for service-2 base on app:on-build image