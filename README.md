# Jifiti home task

- EKS deploy
      1. Clone the repository

    ```bash
    git clone https://github.com/Dynkine/j-test-task.git
    # the "j-test-task" folder will be created
    ```
      2. Navigate to the terraform “main” folder
 
    ```bash
    cd j-test-task/terraform/main/
    ```
 
      3. Enter your aws credentials in terraform.tfvars file
 
    ```bash
    cat > terraform.tfvars << EOF
    aws_access_key = "value of your key"
    aws_secret_key = "value of your key"
    EOF
    ```
 
      4. Initialise terraform, check your terraform plan and deploy the EKS. Please update your state backend. I've created a S3 bucket named "jifiti-home-task" and set it up as a terraform backend.
 
    ```bash
    terraform init
    terraform plan
    terraform apply
    # VPC , EKS cluster  and two worker nodes will be created
    ```
    
- App deploy
    
      1. Setup Kubeconfig for the created cluster
    
    ```bash
    aws eks --region region_name  update-kubeconfig --name cluster_name
    # in my example
    # aws eks --region us-east-1  update-kubeconfig --name j-test-task-cluster
    ```
    
      2. Navigate to app directory
    
    ```bash
    # # if you're still in terraform “main” folder
    cd ../../app
    ```
    
      3. Deploy the application
    
    ```bash
    # create the namespace for the application
    kubectl create namespace jifiti-home-task
    # Deploy the apllication
    kubectl apply -f deployment.yaml -n jifiti-home-task
    ```
    
      4. Get the created load balancer address
    
    ```bash
    aws elb describe-load-balancers | grep DNSName: | sed  's/DNSName: /http:\/\//g'
    ```
    
- Connect to the app

      1. Enter the LB address in the browser
    
    ```bash
    # for example
    http://a874bdc25a15b4c05b84128f0fb054d4-956428165.us-east-1.elb.amazonaws.com
    ```
    
      2. Using curl command
    
    ```bash
    curl http://a874bdc25a15b4c05b84128f0fb054d4-956428165.us-east-1.elb.amazonaws.com/ip
    ```
    
      3. You can create the dns record for your balancer using Route53.
    
    ```bash
    I created http://jifiti-home-task.dynkin.click/ dns record for this purpose
    ```
