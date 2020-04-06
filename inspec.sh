inspec exec -t aws://eu-west-2 ../s3inspec
if [[ $? -eq 0 ]]
then
    aws servicecatalog create-product --cli-input-json file://create-provisioning-artifact-input.json
fi
