REM This file requires modifications to work
REM
REM Prerequisites:
REM  S3 bucket must exist
REM  IAM identity must exist
REM  aws cli must be installed
REM  configure AWS to use IAM identity. Use 'aws configure --profile s3sync'
REM
LOCALDIR=%HOMEPATH%\Documents\S3Bucket
ACCOUNT=123456
REGION=us-west-2
S3BUCKET=arn:s3:%REGION%:%ACCOUNT%:bucketname

aws s3 sync %S3BUCKET% %LOCALDIR% --profile s3sync
