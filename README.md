# Docker dynamic content change

Share information across volumens with docker and current host

## Getting Started

When we are working on the container, we have to repeatedly perform the steps to see the update of the project, service, etc:

1. Update the code
2. Docker stop container-id
3. Re build the image
4. Re run the container
5. See the changes

### Prerequisites

What things you need to install the software and how to install them

```
Docker
Web server image. In this case we used Nginx.
Code to deploy. In this case its just a index.html file.

```

### Installing

A step by step series of examples that tell you how to get a development env running

Docker installation

```

https://www.docker.com/get-started

```

DockerHub Nginx image

```

https://hub.docker.com/_/nginx


```

Change in the Dockerfile your src folder. See the [Dockerfile](Dockerfile)

```

ENV FOLDER = <src-folder>


```

End with an example of getting some data out of the system or using it for a little demo

## Deployment

Create the docker image

```

docker build -t <tag-name> .

Example: docker build -t nginx-mount-volume .


```

Rune the container

```

docker run -d -p  80:80 -v <local-src-folder>:<container-src-folder> <image-tag>

Example: docker run -d -p  80:80 -v ${PWD}/src/:/usr/share/nginx/html nginx-mount-volume


```

And that's it!. Now go to http://localhost to see the content of your app.

Now you just need update the code and refresh de page to see the changes!.

## Built With

* [Docker](https://docs.docker.com/) - Docker docs

## Versioning

We use [GitHub]([http://semver.org/](https://github.com)) for versioning. For the versions available, see the [tags on this repository](https://github.com/beto264). 

## Authors

* **Alberto Tejos S.** - *Initial work* - [GitHub]([https://github.com/beto264))

See also the list of [contributors](https://github.com/your/project/contributors) who participated in this project.

## License

This project is licensed under the MIT License.

