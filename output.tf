
output "aws_region" {
  value = var.aws_region
}
// Instance Name
output "instancename" {
  value = aws_instance.vpnserver.arn
}

// Instance Pupblic IPv4
output "ssh_login" {
  value = "ssh ${var.ec2_username}@${aws_instance.vpnserver.public_ip}"
}

output "scp_command" {
  value = "scp '${var.ec2_username}@${aws_instance.vpnserver.public_ip}:/home/ubuntu/*.ovpn' ~/Downloads/"
}

// Userdata for VPNServer Setup
output "userdata" {
  value = aws_instance.vpnserver.user_data
}

// Instance Type
output "instancetype" {
  value = aws_instance.vpnserver.instance_type
}

// Instance SSH Keyname
output "keyname" {
  value = aws_instance.vpnserver.key_name
}
