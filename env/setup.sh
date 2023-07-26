#!/bin/bash

# Adjust according to every project
export AWS_REGION=us-east-1
export AWS_ACCOUNT_ID=$(aws sts get-caller-identity --query "Account" --output text)
export AppPrefix=amx-rts
export Environment=des
export StackPrefix="${AppPrefix}-${Environment}"
export StackSuffix="${AWS_REGION}-${AWS_ACCOUNT_ID}"

####################
export AppPrefixLower=${AppPrefix,,}
export AppPrefixUpper=${AppPrefix^^}
export EnvironmentLower=${Environment,,}
export EnvironmentUpper=${Environment^^}
export StackPrefixLower=${StackPrefix,,}
export StackPrefixUpper=${StackPrefix^^}


####################
# S3 Buckets
#export S3ArtifactsBucketTestTemplate="${StackPrefixLower}-${AWS_REGION}-${AWS_ACCOUNT_ID}-cf-ar-test-template"
#export S3EksAutoArtifactsBucket="${StackPrefixLower}-${AWS_REGION}-${AWS_ACCOUNT_ID}-eks-auto"

####################
# CI/CD Pipeline Backend
#export S3CicdBucketName="${StackPrefixLower}-${AWS_REGION}-${AWS_ACCOUNT_ID}-s3-cicd-bknd"
#export S3BlueBucketName="${StackPrefixLower}-${AWS_REGION}-${AWS_ACCOUNT_ID}-s3-cicd-blue"
#export S3GreenBucketName="${StackPrefixLower}-${AWS_REGION}-${AWS_ACCOUNT_ID}-s3-cicd-green"

####################
# Service Catalog
export S3TemplateBucketName="${StackPrefixLower}-${AWS_REGION}-${AWS_ACCOUNT_ID}-s3-sc-templates"
