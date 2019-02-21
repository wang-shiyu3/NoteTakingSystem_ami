# AWS AMI for CSYE 6225

## Team Information

| Name | NEU ID | Email Address |
| --- | --- | --- |
| Zhichao Pan | 001493794 | pan.z@husky.neu.edu |
| Shiyu Wang | 001400142 | wang.shiyu3@husky.neu.edu |
| Mengying Wang | 001357559 | wang.mengyin@husky.neu.edu |

## Validate Template

```
packer validate centos-ami-template.json
```

## Build AMI

```
packer build \
    -var 'aws_access_key=REDACTED' \
    -var 'aws_secret_key=REDACTED' \
    -var 'aws_region=us-east-1' \
    -var 'subnet_id=REDACTED' \
    centos-ami-template.json
```
