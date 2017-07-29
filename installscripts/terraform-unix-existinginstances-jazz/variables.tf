variable "region" {
  type = "string"
  default = "us-east-1"
}
variable "vpc" {
  type = "string"
  // us-east-1
  default = "vpc-e1b9b784"
  //us-west-2 -- oregon
//  default = "vpc-c7e4b0a2"
}
variable "subnet" {
  type = "string"
        // us-east-1
  default = "subnet-c5caafee"
        // us-east-2
  //default = "subnet-24cfea41"
}
variable "cidrblocks" {
  type = "string"
  default = "172.31.0.0/16"
}

variable "bitbucketserver_ami" {
  type = "string"
  default = "ami-50c7cb46"
	// amis copied to us-west-1
  //default = "ami-74755c14"
}
variable "jenkinsserver_ami" {
  type = "string"
  default = "ami-d284bec4"
	// amis copied to us-west-1
  //default = "ami-ae745dce"
}
variable "jenkinsslave_ami" {
  type = "string"
  default = "ami-4d35095b"
}
variable "bitbucket_home" {
  type = "string"
  default = "/home/ec2-user/atlassian/application-data/bitbucket"
}
variable "bitbucket_defaultInstallDir" {
  type = "string"
  default = "/home/ec2-user/atlassian/bitbucket/5.2"
}
variable "chefconfigDir" {
  type = "string"
  default = "../chefconfig"
}
variable "cookbooksDir" {
  type = "string"
  default = "../cookbooks"
}
variable "keypair" {
  type = "map"

  default = {
    key_name = "ustglobal_rsa"
    public_key = "../sshkeys/ustglobal_rsa.pub"
    private_key = "../sshkeys/ustglobal_rsa.pem"
  }
}
variable "jenkinspropsfile" {
  type = "string"
  default = "../cookbooks/jenkins/files/node/jenkins-conf.properties"
}
variable "jenkinsattribsfile" {
  type = "string"
  default = "../cookbooks/jenkins/attributes/default.rb"
}

variable "jenkinsservermap" {
  type = "map"

  default = {
    jenkins_elb = "please change"
    public_ip = "please change"
    private_ip = "please change"
    subnet = "please change"
    security_group = "please change"
  }
}
variable "bitbucketservermap" {
  type = "map"

  default = {
    bitbucket_elb = "please change"
    public_ip = "please change"
    private_ip = "please change"
  }
}
