# jla-static

JLA static website -
[http://jesuslovesamerika.co.uk](http://jesuslovesamerika.co.uk)

## python http server

```sh
# start
$ ./server.sh start

# stop
$ ./server.sh stop
```

goto [http://localhost:8000](http://localhost:8000)

## vagrant/lxc/ansible

```sh
# start
$ vagrant up jla

# provision using ansible
$ vagrant provision jla

# stop
$ vagrant destroy -f jla
```

goto [http://jla.lxc](http://jla.lxc)

## docker

```sh
$ sudo docker-compose up web
```

goto [http://localhost:8000](http://localhost:8000)
