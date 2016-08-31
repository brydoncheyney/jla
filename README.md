# jla-static

JLA static website -
[http://jesuslovesamerika.co.uk](http://jesuslovesamerika.co.uk)

## python http server

```sh
# start
$ ./run.sh

# stop
$ ps -ef | grep SimpleHTTPServer | awk '{print $2}' | xargs kill
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
