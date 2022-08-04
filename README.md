# README

I'm going to assume that you've finished building your docker environment.

please this repo local clone
``` shell
 git clone https://github.com/kawabata324/template-rails6-api-docker.git
```

you  build the image

```shell
docker-compose build
```

Create the database:

```shell
docker-compose run web rake db:create
```

And, finally, you can boot the app:

```shell
docker-compose up
```

