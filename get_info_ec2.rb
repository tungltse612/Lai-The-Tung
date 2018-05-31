require 'aws-sdk-ec2'  # v2: require 'aws-sdk'

Aws.config.update({region: 'us-west-1'})
Aws.config.update({
   credentials: Aws::Credentials.new('AKIAIOYUYK5F2DYU63MA', 'jyOxedfL8pyzZ85PAzbzjNcioJFI7xjkKbZl58p9')
   })

ec2 = Aws::EC2::Resource.new(region: 'us-east-1')
      
i = ec2.instance('i-011c607d5e9499851')

if i.exists?
  puts "State: #{i.state.name}"
end
