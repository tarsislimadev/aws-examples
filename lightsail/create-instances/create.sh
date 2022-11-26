echo
echo aws lightsail create-instances
echo

aws lightsail create-instances \
  --instance-names "instance-name" \
  --availability-zone "us-east-1a" \
  --blueprint-id "ubuntu_20_04" \
  --bundle-id "nano_1_0"
