#!/usr/bin/env bash
zip -r ./www/Archive.zip ./www

AWS_CONFIG_FILE=$HOME/.aws/config
AWS_CREDENTIALS=$HOME/.aws/credentials

mkdir $HOME/.aws

touch $AWS_CONFIG_FILE
chmod 777 $AWS_CONFIG_FILE

echo "[profile default]" > $AWS_CONFIG_FILE
echo "aws_access_key_id=$AWS_ACCESS_KEY_ID" >> $AWS_CONFIG_FILE
echo "aws_secret_access_key=$AWS_SECRET_ACCESS_KEY" >> $AWS_CONFIG_FILE

touch $AWS_CREDENTIALS
chmod 777 $AWS_CREDENTIALS

echo "[default]" > $AWS_CREDENTIALS
echo "aws_access_key_id=$AWS_ACCESS_KEY_ID" >> $AWS_CREDENTIALS
echo "aws_secret_access_key=$AWS_SECRET_ACCESS_KEY" >> $AWS_CREDENTIALS

eb deploy --profile default

eb setenv AWS_ACCESS_KEY_ID=$AWS_ACCESS_KEY_ID \
          AWS_BUCKET=$AWS_BUCKET \
          AWS_DEFAULT_REGION=$AWS_DEFAULT_REGION \
          AWS_SECRET_ACCESS_KEY=$AWS_SECRET_ACCESS_KEY \
          JWT_SECRET=$JWT_SECRET \
          POSTGRES_DB=$POSTGRES_DB \
          POSTGRES_HOST=$POSTGRES_HOST \
          POSTGRES_PASSWORD=$POSTGRES_PASSWORD \
          POSTGRES_PORT=$POSTGRES_PORT \
          POSTGRES_USERNAME=$POSTGRES_USERNAME \
          URL=$URL

