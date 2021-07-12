#!/bin/bash
echo -e "Copying the articfacts to S3.....\n"
aws s3 cp index.html s3://sasistaticwebsite/ --acl public-read
