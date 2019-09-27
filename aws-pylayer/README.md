# aws-pylayer

Creating aws lambda layer for Python 3.6

Usage: `python -it --rm -v hostdir:/workdir harveypham/aws-pylayer -o [output file name] packages ...`

-o    Specify output zip file name. The default is package.zip. Note that filename is saved on volume /workdir

Optional mapping a host directory to workdir volume so all the work are saved to the host:
    - python: contains the necessary binaries in a folder
	- package.zip (or output file)

The program pause at the end until user press <Enter>, allowing user a chance to run `docker cp` to copy the output file from docker in case no /workdir mapping
