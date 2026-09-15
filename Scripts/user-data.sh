#!/bin/bash

# Update system packages
yum update -y

# Install Apache Web Server
yum install -y httpd

# Enable and start Apache
systemctl enable httpd
systemctl start httpd

echo "<h1>Hello World from $(hostname -f)</h1>" > /var/www/html/index.html