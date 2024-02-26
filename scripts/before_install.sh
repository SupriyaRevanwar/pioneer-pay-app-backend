#!/bin/bash

# Download JAR files from S3 bucket to local directory
sudo rm -rf /home/ec2-user/pioneer-pay-microservices
aws s3 cp s3://pioneer-pay-microservices-bucket/pioneer-pay-serviceregistry.jar /home/ec2-user/pioneer-pay-serviceregistry.jar
aws s3 cp s3://pioneer-pay-microservices-bucket/pioneer-pay-apigateway.jar /home/ec2-user/pioneer-pay-apigateway.jar
aws s3 cp s3://pioneer-pay-microservices-bucket/pioneer-pay-userservice.jar /home/ec2-user/pioneer-pay-userservice.jar
aws s3 cp s3://pioneer-pay-microservices-bucket/pioneer-pay-accountservice.jar /home/ec2-user/pioneer-pay-accountservice.jar
aws s3 cp s3://pioneer-pay-microservices-bucket/pioneer-pay-transaction.jar /home/ec2-user/pioneer-pay-transaction.jar