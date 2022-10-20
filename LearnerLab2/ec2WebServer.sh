aws ec2 run-instances --image-id ami-026b57f3c383c2eec --count 1 --instance-type t2.micro --key-name vockey --security-group-ids sg-05f1d275fd5cfbb9a --subnet-id subnet-0fd97bdd703b21129 --user-data file://userdata.sh --associate-public-ip-address --tag-specifications 'ResourceType=instance,Tags=[{Key=Name,Value=WebServerPublic}]'



---LARGO---
aws ec2 run-instances --image-id ami-026b57f3c383c2eec --count 1 --instance-type t2.micro --key-name vockey --security-group-ids sg-0ae1e3bdb52f14f71 --subnet-id subnet-0cb5c1ecc259d2719 --user-data file://userdata.sh --associate-public-ip-address --tag-specifications 'ResourceType=instance,Tags=[{Key=Name,Value=WebServerPublic}]' && aws ec2 run-instances --image-id ami-026b57f3c383c2eec --count 1 --instance-type t2.micro --key-name vockey --security-group-ids sg-00d2d528ee386afb0 --subnet-id subnet-0a54dc1886af40d2e --tag-specifications 'ResourceType=instance,Tags=[{Key=Name,Value=PrivateSSH}]'