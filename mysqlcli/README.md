# Docker image for MYSQL Command Line Interface (CLI)



#### Usage
```
docker run -it --rm harveypham/mysqlcli args

    args    arguments for mysql client (see mysql client manual for more details)
```

#### Alias
To save typing, define this alias:

`alias mysql="docker run -it --rm harveypham/mysqlcli"`

and use `mysql` command as if mysql client is installed on the host.