provider "aws" {
  region = "us-east-1"
  alias = "east"
}
provider "aws" {
    region = "us-west-1"
    alias = "west" 
}