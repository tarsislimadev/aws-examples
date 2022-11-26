echo
echo aws lightsail create-key-pair
echo

aws-cli lightsail create-key-pair \
  --key-pair-name "key-pair-name"

echo
echo aws lightsail create-instances
echo

aws-cli lightsail create-instances \
  --instance-names "instance-name" \
  --availability-zone "us-east-1a" \
  --blueprint-id "ubuntu_20_04" \
  --bundle-id "nano_1_0" \
  --key-pair-name "key-pair-name"
