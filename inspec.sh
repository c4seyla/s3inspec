inspec exec -t aws://eu-west-2 ../s3inspec
if [[ $? -eq 0 ]]
then
    aws servicecatalog create-provisioning-artifact --product-id s3 --cli-input-json file://create-provisioning-artifact-input.json
fi
