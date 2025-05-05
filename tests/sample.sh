FULL="qa-auth-api-1.0"
# FULL="qa-frontend-v1.0"
# FULL="qa-log-message-processor-v1.0"
# FULL="qa-log-message-processor-nightly-2024-10-02"


echo "FULL: $FULL"

AFTER=${FULL#qa-}
echo "AFTER: $AFTER"    # auth-api-v1.0

SERVICE=${AFTER%-*}
echo "SERVICE: $SERVICE"  # auth-api

VERSION=${AFTER#${SERVICE}-}     # v1.0
echo "VERSION: $VERSION"