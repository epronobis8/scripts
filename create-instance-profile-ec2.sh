aws iam create-instance-profile --instance-profile-name DevOps-EC2-Erin --profile msitechlab
aws iam add-role-to-instance-profile --instance-profile-name DevOps-EC2-Erin --role-name jenkins-ec2-publish-to-s3 --profile msitechlab
aws ec2 associate-iam-instance-profile --iam-instance-profile Name=DevOps-EC2-Erin --instance-id i-0edc0918bf77b6531 --profile msitechlab

#creates an instance profile, attaches roles to the profile, and attach to ec2 instance
