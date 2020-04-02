describe aws_s3_bucket(bucket_name: 'inspectest-netpath') do
  it { should exist }
  its('bucket_policy') { should be_empty }
end
