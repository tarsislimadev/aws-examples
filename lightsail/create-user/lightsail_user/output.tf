# FIXME: imprimir "AWS Access Key ID" and "AWS Secret Access Key"

output "user_access_key_id" {

  description = "[user] Access key ID"

  value = aws_iam_access_key.iam_access_key.encrypted_secret

}
