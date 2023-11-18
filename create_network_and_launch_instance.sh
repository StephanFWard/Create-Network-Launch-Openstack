#!/bin/bash

# OpenStack Credentials
export OS_USERNAME="your_username"
export OS_PASSWORD="your_password"
export OS_PROJECT_NAME="your_project_name"
export OS_USER_DOMAIN_NAME="Default"
export OS_PROJECT_DOMAIN_NAME="Default"
export OS_AUTH_URL="http://your_openstack_identity_url:5000/v3"
export OS_IDENTITY_API_VERSION=3

# Network Configuration
NETWORK_NAME="android_network"
SUBNET_NAME="android_subnet"
SUBNET_CIDR="192.168.1.0/24"
GATEWAY_IP="192.168.1.1"
DNS_SERVER="8.8.8.8"

# Launch Instance Configuration
INSTANCE_NAME="android_instance"
FLAVOR="m1.small"  # Adjust based on available flavors
IMAGE_NAME="your_image_name"  # Replace with the desired image name
KEY_PAIR="your_key_pair"  # Replace with your key pair name

# Create Network
openstack network create --share --external --provider-physical-network provider \
  --provider-network-type flat $NETWORK_NAME

# Create Subnet
openstack subnet create --network $NETWORK_NAME --subnet-range $SUBNET_CIDR \
  --gateway $GATEWAY_IP --dns-nameserver $DNS_SERVER $SUBNET_NAME

# Launch Instance
openstack server create --flavor $FLAVOR --image $IMAGE_NAME --key-name $KEY_PAIR \
  --nic net-id=$(openstack network show -f value -c id $NETWORK_NAME) $INSTANCE_NAME