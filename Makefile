build:
	yarn run build

deploy: build
	aws s3 sync dist s3://${AWS_BUCKET} --profile ${AWS_PROFILE}
