function ec2ip
    echo (aws ec2 describe-network-interfaces --filter Name=attachment.instance-id,Values=$argv | jq -r '.NetworkInterfaces[0].Association.PublicIp')
end
