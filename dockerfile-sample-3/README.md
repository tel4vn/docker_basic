#"ONBUILD" — Dockerfile command

How to build the golden image ?

Build the app:on-build with Dockerfile:
```
docker build -t app:on-build .
```

Run the container with app:on-build image and still see the default nginx page:
```
docker container run -d —-name app -p 8080:80 app:on-build
```

As you can see, “index.html” is not copied in base image. 
Stop the container:
```
docker container stop app
```

After that, build image base on app:on-build image
```
docker build -t app:0.1 -f index.Dockerfile .
```

Run the container with app:0.1 image and our latest index.html file is copied in a new build:
```
docker container run -d —-name app-1 -p 8080:80 app:0.1
```