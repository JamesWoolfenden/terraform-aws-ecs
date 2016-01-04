variable "aws_amis" {
    description="These are Amazon Linux ami"
    default = {
      us-east-1="ami-ddc7b6b7"
      us-west-1="ami-a39df1c3"
      us-west-2="ami-d74357b6"
      eu-west-1="ami-f1b46b82"
      eu-central-1 =""
      ap-southeast-1=""
      ap-northeast-1="ami-3077525e"
      ap-southeast-2="ami-23b4eb40"
      sa-east-1     =""
    }
}

variable "dnsname" {
    description="mixed up dns names to environments"
    default = {
      support="aevi-test.io"
      dev    ="dev.aevi-test.io"
      test   ="test.aevi-test.io"
      ops    ="ops.aevi-test.io"
    }
}
