# Define variables
APP_NAMES=("pioneer-pay-serviceregistry" "pioneer-pay-apigateway" "pioneer-pay-userservice" "pioneer-pay-accountservice" "pioneer-pay-transaction")
DEPLOYMENT_GROUP="microservice-dg"
S3_BUCKET="pioneer-pay-microservices-bucket"

# Install AWS CLI if not already installed
if ! command -v aws &> /dev/null; then
    echo "AWS CLI is not installed. Installing..."
    curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
    unzip awscliv2.zip
    sudo ./aws/install
fi

# Function to deploy a single JAR file
deploy_jar() {
    local APP_NAME=$1
    # Start the Spring Boot application
    java -jar $APP_NAME.jar &
    # Wait for the application to start (adjust sleep duration as needed)
    sleep 30
    # Register the deployment with CodeDeploy
    aws deploy create-deployment \
        --application-name $APP_NAME \
        --deployment-group-name $DEPLOYMENT_GROUP \
        --s3-location bucket=$S3_BUCKET,key=$APP_NAME.jar,bundleType=zip
}

# Deploy each application
for APP_NAME in "${APP_NAMES[@]}"; do
    deploy_jar $APP_NAME
done