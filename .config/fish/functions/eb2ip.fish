function eb2ip
    set instance_id (aws elasticbeanstalk describe-environment-resources --environment-name $argv | jq -r '.EnvironmentResources.Instances[0].Id')
    ec2ip $instance_id
end