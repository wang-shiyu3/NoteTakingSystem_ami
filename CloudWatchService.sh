 cat <<EOT >> /etc/systemd/system/cloudwatch.service
[Unit]
 Description=CloudWatch Service

[Service]	
 ExecStart=/opt/aws/amazon-cloudwatch-agent/bin/amazon-cloudwatch-agent-ctl -a fetch-config -m ec2 -c file:/home/centos/www/webapp/amazon-cloudwatch-agent-schema.json -s
 ExecStop=/opt/aws/amazon-cloudwatch-agent/bin/amazon-cloudwatch-agent-ctl -m ec2 -a stop
 ExecReload=/opt/aws/amazon-cloudwatch-agent/bin/amazon-cloudwatch-agent-ctl -a fetch-config -m ec2 -c file:/home/centos/www/webapp/amazon-cloudwatch-agent-schema.json -s 

[Install]
 WantedBy=multi-user.target
 EOT