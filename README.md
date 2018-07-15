# Ubuntu Dockerfile

A Dockerfile that produces a Docker Image for [Ubuntu][ubuntu] Trusty.

[ubuntu]: http://www.ubuntu.com/

## Usage

### Build the image

To create the image `gstack/ubuntu-trusty`, execute the following command on
the `docker-ubuntu-trusty` folder:

```
$ docker build -t gstack/ubuntu-trusty .
```

### Run the image

To run the image:

```
$ docker run -ti --rm --name ubuntu  gstack/ubuntu-trusty
```

## Copyright

Copyright (c) 2014 Ferran Rodenas.
Copyright (c) 2018 Benjamin Gandon.
See [LICENSE][license] for details.

[license]: https://github.com/gstackio/docker-ubuntu-trusty/blob/master/LICENSE
