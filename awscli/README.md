# AWS CLI

#### Usage

Passing credentials from Environment variables:

`docker run -it --rm -e AWS_ACCESS_KEY_ID="key id" -e AWS_SECRET_ACCESS_KEY="secret" -e AWS_DEFAULT_REGION="region" harveypham/awscli args ...`

Passing credentials from config file:

`docker run -it --rm -v ~/.aws:/root/.aws harveypham/awscli args ...`

#### Alias

To save typing, define the following alias:

`alias aws="docker run -it --rm -v ~/.aws:/root/.aws harveypham/awscli"`

Run `aws configure` to save credentials to ~/.aws first.