SERVICE="auth-api"
IMAGE="035863456454.dkr.ecr.us-east-1.amazonaws.com/auth-api:rc-auth-api-2.0"
PORT="8080"

sed \
-e "s|__SERVICE__|$SERVICE|g" \
-e "s|__IMAGE__|$IMAGE|g" \
-e "s|__PORT__|$PORT|g" \
k8s/templates/deployment-green.yaml.tpl \
> k8s/uat/$SERVICE/deployment-green.yaml