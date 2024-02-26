#!/bin/bash

# Define an array of JAR files
jar_files=("pioneer-pay-serviceregistry.jar" "pioneer-pay-userservice.jar" "pioneer-pay-accountservice.jar" "pioneer-pay-transaction.jar" "pioneer-pay-apigateway.jar")

# Loop through the array and start each JAR file in the background
for jar_file in "${jar_files[@]}"; do
    java -jar "/home/ec2-user/$jar_file" &
    wait &!
done

# Wait for all background processes to finish
