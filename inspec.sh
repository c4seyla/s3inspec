inspec exec -t aws://eu-west-2 ../s3inspec
if [[ $? -eq 0 ]]
then
    aws servicecatalog create-product --cli-input-json file://create-provisioning-artifact-input.json > output.json
    productid=$(cat output.json grep "ProductId" | awk -F '"' '{print $4}')
    echo $productid
    aws servicecatalog associate-product-with-portfolio --product-id $productid --portfolio-id port-2cbakduzuk3vk
    
else
     echo "The template failed the Inspec Test"
fi
