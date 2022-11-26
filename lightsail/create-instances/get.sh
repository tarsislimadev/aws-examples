sudo echo

echo
echo aws lightsail get-instance
echo

PUBLIC_IP_ADDRESS=$( aws lightsail get-instance --instance-name "instance-name" | jq ".instance.publicIpAddress" | sed -e 's/"//ig' )

echo
echo PUBLIC_IP_ADDRESS: $PUBLIC_IP_ADDRESS
echo

PRIVATE_KEY=$( aws lightsail download-default-key-pair | jq ".privateKeyBase64" | sed -e 's/"//ig' )

sudo rm -rf key-pair.pem

echo
echo PRIVATE_KEY: $PRIVATE_KEY
echo

echo $PRIVATE_KEY | sed -e 's/\\n/\n/ig' >> key-pair.pem

sudo chmod 400 key-pair.pem

echo ssh -i key-pair.pem ubuntu@$PUBLIC_IP_ADDRESS

ssh -i key-pair.pem ubuntu@$PUBLIC_IP_ADDRESS
