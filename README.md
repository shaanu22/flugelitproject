FLUGELIT TEST
This repository fulfills the following requirements:

1. Create Terraform code to create an AWS S3 bucket with two files: test1.txt and test2.txt. The content of these files must be the timestamp when the code was executed.
2. Using Terratest, create the test automation for the Terraform code, validating that both files and the bucket are created successfully. 
3. Setup Github Actions to run a pipeline to validate this code.
4. Publish your code in a public GitHub repository, and share a Pull Request with your code. Do not merge into master until the PR is approved.
5. Include documentation describing the steps to run and test the automation.

STEPS TO ACCOMPLISH TASKS
The following steps are needed to complete the tasks listed above.

AWS ACCOUNT CREATION
1. Create a free-tier account with AWS.
2. For security purpose, create an IAM user with administrative privilege over S3 bucket.
3. Download the account's access keypair
4. Install AWS Command Line Interface (CLI) on your computer.
5. Globally configure your AWS credentials by running aws configure

