terraform {
    backend "s3" {
        region  =  "us-east-1"
        bucket = "remote-exec-caglar"
        key = "remote.state"
    }
}