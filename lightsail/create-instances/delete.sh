echo
echo aws lightsail delete-instance
echo

aws-cli lightsail delete-instance \
  --instance-name "instance-name"

echo
echo aws lightsail delete-key-pair
echo

aws-cli lightsail delete-key-pair \
  --key-pair-name "key-pair-name"
