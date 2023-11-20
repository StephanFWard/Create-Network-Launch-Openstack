# OpenStack Android Environment Setup Script 🚀

This script automates the process of creating a network and launching an instance in OpenStack, preparing it for Android development and deployment for local testing.

## Prerequisites

- OpenStack command-line client (`openstack`) installed and configured
- Access to an OpenStack environment
- Necessary credentials: username, password, project name, etc.

## Usage

1. **Clone the Repository:**

   ```bash
   git clone https://github.com/stephanfward/openstack-android-setup.git
Configure the Script:

Open the script (create_network_and_launch_instance.sh) in a text editor and update the necessary parameters such as OpenStack credentials, network settings, and instance details.

Make the Script Executable:

chmod +x create_network_and_launch_instance.sh

Run the Script:
./create_network_and_launch_instance.sh
Follow the on-screen prompts and watch the magic happen! ✨

Script Details
Network Creation:

External network named "android_network"
Subnet with specified CIDR, gateway, and DNS settings

Instance Launch:

Instance named "android_instance"
Flavor: m1.small
Image: your_image_name
Key Pair: your_key_pair

Notes
Customize the script according to your OpenStack environment and requirements.

Ensure OpenStack credentials and network details are correctly provided.

Happy Android Development! 🤖🌐
