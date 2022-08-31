#!/bin/bash
eval "$(jq -r '@sh "id=\(.id)"')"
VpcId=$(aws ec2 --output text --query 'Vpcs[*].{VpcId:VpcId}' describe-vpcs --vpc-ids ${id})
jq -n --arg VpcId "$VpcId" '{"VpcId":$VpcId}'
