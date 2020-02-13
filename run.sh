docker run \
  -it \
  -e AWS_ACCOUNT_ID \
  -e AWS_DEFAULT_REGION \
  -e CLOUDMAPPER_RUN_SERVER=1 \
  -e AWS_ACCESS_KEY_ID \
  -e AWS_REGION=${AWS_DEFAULT_REGION} \
  -e AWS_SECRET_ACCESS_KEY \
  -p 8000:8000 \
  -v ${PWD}/account-data:/opt/cloudmapper/account-data \
  -v ${PWD}/web/account-data:/opt/cloudmapper/web/account-data \
  agilesyndrome/cloudmapper:latest
