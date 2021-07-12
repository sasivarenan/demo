cd ../
aws s3 cp ../. s3://sasistaticwebsite --recursive --acl public-read
