**FLUGEL.IT TASK - S3 BUCKET/OBJECT CREATION AND VALIDATION**

This repository contains Terraform modules that deploy resources in AWS to demonstrate how you can use Terratest to write automated tests for your AWS Terraform code. It fulfills the following requirements:

1. Create Terraform code to create an AWS S3 bucket with two files: test1.txt and test2.txt. The content of these files must be the timestamp when the code was executed.

2. Using Terratest, create the test automation for the Terraform code, validating that both files and the bucket are created successfully. 

3. Setup GitHub Actions to run a pipeline to validate this code.

4. Publish your code in a public GitHub repository, and share a Pull Request with your code. Do not merge into master until the PR is approved.

5. Include documentation describing the steps to run and test the automation.<br>


<br/>**STEPS TO ACCOMPLISH TASKS**
The following steps are needed to complete the tasks listed above: <br>


<br/>**AWS ACCOUNT CREATION**
1. Create a free-tier account with AWS.

2. As a security best practice, create an IAM user with administrative privilege for S3 bucket.

3. Download your AWS account's keypair.

4. Install AWS Command Line Interface (CLI) on your computer.

5. Globally configure your AWS credentials by running "aws configure"  (on your command line) and entering your AWS credentials, OR set your environment variables with your credentials.<br>


<br/>**TERRAFORM CONFIGURATION FOR AWS BUCKET AND OBJECTS**
1. Configure your AWS credentials using one of the supported methods for AWS CLI tools, such as setting the AWS_ACCESS_KEY_ID and AWS_SECRET_ACCESS_KEY environment variables. If you are using the ~/.aws/config file for profiles then export AWS_SDK_LOAD_CONFIG as "True".

2. You can set the AWS region you want to use as the environment variable AWS_DEFAULT_REGION.

3. Install Terraform and make sure it is on your PATH.

4. Run terraform init.

5. Run terraform apply.

6. When you are done creating your resources, run terraform destroy.<br>



<br/>**VALIDATING OUR TERRAFORM CODE USING TERRATEST**
Terratest runs all your terraform code in the same steps as those done by terraform. These include running terraform init, terraform apply, reading the output variable using terraform output, checking to ensure that its value is what we expect, and running terraform destroy (using defer to run it at the end of the test, whether the test succeeds or fails). However, to get to this point, do the following:

1. Install Golang and make sure your code is checked out into your GOPATH.

2. cd into the folder containing your terratest code.

3. Run "go mod init <your github.com/<YOUR_USERNAME>/<YOUR_REPO_NAME>".
   Note: This step assumes you have created a Github account and a repository dedicated to your code.

4. Run "go get <packages required to run your test>".

5. Run "go mod tidy".

6. Run "go test -v" in the folder containing your terratest file.<br>


<br/>**SETTING UP GITHUB ACTION**
Based on your GitHub Workflow file content, Github Actions may require your AWS credentials, including region, access key ID, and secret access key. The values you provide for these keys will be the same as your AWS credentials.

Your GitHub Workflow file may contain actions for the following - validate, init, format, plan, apply, and so on. It depends on the events and actions that you state in the file.
