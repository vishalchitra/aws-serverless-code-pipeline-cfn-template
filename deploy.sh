#! /bin/bash

echo "Installing serverless"
echo "_______________________________"

npm install
#npm install -g serverless
#npm install serverless-dynamodb-local serverless-offline serverless-stack-output

echo "Deploying to $env"
echo "_______________________________"
npm deploy --stage $env --package $CODEBUILD_SRC_DIR/artifacts/$env -v
