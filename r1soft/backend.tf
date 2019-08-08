terraform {
    backend "s3" {
        region  =  "us-east-1"
        bucket = "remote-exec-caglar"
        key = "r1soft/r1soft.state"
    }
}