#!/bin/bash

# Restart services after deployment
#sudo systemctl restart serviceregistry
#sudo systemctl restart apigateway
#sudo systemctl restart userservice
#sudo systemctl restart accountservice
#sudo systemctl restart transaction
#!/bin/bash
#echo "Waiting for applications to start..."
#sleep 60
# Start serviceregistry
#nohup java -jar /pioneer-pay-serviceregistry.jar > /dev/null 2>&1 &
#
## Start apigateway
#nohup java -jar /pioneer-pay-apigateway.jar > /dev/null 2>&1 &
#
## Start userservice
#nohup java -jar /pioneer-pay-userservice.jar > /dev/null 2>&1 &
#
## Start accountservice
#nohup java -jar /pioneer-pay-accountservice.jar > /dev/null 2>&1 &
#
## Start transaction
#nohup java -jar /pioneer-pay-transaction.jar > /dev/null 2>&1 &
chmod +x /home/ec2-user/*.jar
chmod +x /home/ec2-user/pioneer-pay-microservices/scripts/*.sh
