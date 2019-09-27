# aws-pylayer

Creating aws lambda layer for Python 3.6

#### Usage
```
python -it --rm harveypham/aws-pylayer -o [output] packages...

    -o          Specify output zip file name. The default is package.zip.
                Note that filename is saved in /workdir on docker image

    packages    pip packages to be included in this layer
```

#### Output
The program pause at the end until user press `Enter`, allowing user a chance to run
*docker cp* to copy the output file from docker to host.

Optionally, user can use docker -v option to mapping a host directory to */workdir* volume on docker so all the work are saved to host. This program outputs the following
1. python: contains the necessary binaries in a folder
2. package.zip (or output file specified by user) contains the lambda layer

#### Alias (optional)
To save typing, user can define an alias as follow:

`alias pylayer="python -it --rm harveypham/aws-pylayer"`

or

`alias pylayer="python -it --rm -v ~/pylayer:/workdir harveypham/aws-pylayer"`

#### Examples
Creating a layer of mysql-connector-python:

`python -it --rm -v ~/workdir:/workdir harveypham/aws-pylayer -o mysql-connector-python`