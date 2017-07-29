# docker-awscli
An awscli

## Why python3?

> python2 can't upload file with utf8 name...

## Basic usage

```sh
docker run \
--rm \
-e AWS_ACCESS_KEY_ID=<YOUR_ACCESS_KEY> \
-e AWS_SECRET_ACCESS_KEY=<YOUR_SECRET_ACCESS> \
-e AWS_DEFAULT_REGION=ap-northeast-1 \
sstc/awscli \
aws s3 ls s3://my.bucket
```

## Advanced usage

- setup [aws config](https://github.com/aws/aws-cli#getting-started) to `~/.aws/config`

```ini
[default]
aws_access_key_id=<YOUR_ACCESS_KEY>
aws_secret_access_key=<YOUR_SECRET_ACCESS>
# Optional, to define default region for this profile.
region=ap-northeast-1
```

- run

```sh
docker run \
--rm \
-v ~/.aws:/root/.aws \
sstc/awscli \
aws s3 ls s3://my.bucket
```

## Short command example

- [setup aws config](#Advanced usage)
- download example shell

```sh
curl -o /usr/local/bin/aws https://raw.githubusercontent.com/up9cloud/docker-awscli/master/aws.sh
chmod +x /usr/local/bin/aws
```

- run

```sh
# backup home
aws s3 sync ~ s3://my.bucket/object/ --dryrun # test run
aws s3 sync ~ s3://my.bucket/object/ # real run

# restore home
aws s3 sync s3://my.bucket/object/ ~ --dryrun # test run
aws s3 sync s3://my.bucket/object/ ~ # real run
```
