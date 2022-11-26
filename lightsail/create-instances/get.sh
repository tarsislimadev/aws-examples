echo
echo aws lightsail get-instance
echo

aws-cli lightsail get-instance \
  --instance-name "instance-name" \
  | jq ".instance.publicIpAddress"
