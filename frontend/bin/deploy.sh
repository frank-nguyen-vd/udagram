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

aws s3 cp --recursive --acl public-read ./www s3://udagram-web/