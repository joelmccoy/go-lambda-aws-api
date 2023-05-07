# go-lambda-aws-api
A simple example of deploying a REST API with golang to AWS using Lambda and API Gateway.

## Terraform State
Terraform state is stored in an s3 bucket that you must create first.  

The default bucket name is `go-aws-lambda-api-dev`.  

If you would like to override this bucket name please set the `TFSTATE_BUCKET` env variable like so:
```bash
export TFSTATE_BUCKET="a-really-good-bucket-name"
```