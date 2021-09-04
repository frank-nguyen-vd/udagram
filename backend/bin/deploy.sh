#!/usr/bin/env bash
zip -r ./www/Archive.zip ./www

AWS_CONFIG_FILE=$HOME/.aws/config
AWS_CREDENTIALS=$HOME/.aws/credentials

mkdir $HOME/.aws

touch $AWS_CONFIG_FILE
chmod 600 $AWS_CONFIG_FILE

echo "[profile default]" > $AWS_CONFIG_FILE
echo "aws_access_key_id=$AWS_ACCESS_KEY_ID" >> $AWS_CONFIG_FILE
echo "aws_secret_access_key=$AWS_SECRET_ACCESS_KEY" >> $AWS_CONFIG_FILE

touch $AWS_CREDENTIALS
chmod 600 $AWS_CREDENTIALS

echo "[default]" > $AWS_CREDENTIALS
echo "aws_access_key_id=$AWS_ACCESS_KEY_ID" >> $AWS_CREDENTIALS
echo "aws_secret_access_key=$AWS_SECRET_ACCESS_KEY" >> $AWS_CREDENTIALS

eb setenv AWS_ACCESS_KEY_ID=$AWS_ACCESS_KEY_ID
eb setenv AWS_BUCKET=$AWS_BUCKET
eb setenv AWS_DEFAULT_REGION=$AWS_DEFAULT_REGION
eb setenv AWS_SECRET_ACCESS_KEY=$AWS_SECRET_ACCESS_KEY
eb setenv JWT_SECRET=$JWT_SECRET
eb setenv POSTGRES_DB=$POSTGRES_DB
eb setenv POSTGRES_HOST=$POSTGRES_HOST
eb setenv POSTGRES_PASSWORD=$POSTGRES_PASSWORD
eb setenv POSTGRES_PORT=$POSTGRES_PORT
eb setenv POSTGRES_USERNAME=$POSTGRES_USERNAME
eb setenv URL=$URL

eb deploy --profile default