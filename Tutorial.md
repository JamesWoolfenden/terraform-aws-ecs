#tutorial

#Prequisites
terraform (theres a chocolatey package - choco install terraform) +aws cli or aws powershell
atom (it has a terraform syntax checker)
set env vars or pass aws secrets in.

You can create all the objects in a folder or you can specify an object at a time.
In you folder XXXX

#Create a key in AWS using
terraform apply -target aws_key_pair.aevi-app

#Destroy an object
terraform destroy -force -target aws_key_pair.aevi-app

#Creaate an ECS cluster and IAM related roles
terraform apply -target aws_ecs_cluster.aevi-app
terraform apply -target aws_key_pair.aevi-app
terraform apply -target aws_iam_instance_profile.aevi-apps-profile
terraform apply -target aws_iam_role_policy.aevi-app-ecsInstancePolicy
terraform apply -target aws_iam_role_policy.aevi-app-ServicePolicy

# now you can now associate ec2 instance with a cluster
terraform apply -target aws_instance.aevi-app

aws ecs list-container-instances --cluster aevi-app
#check
#Show output

#add an ecs task  
terraform apply -target aws_ecs_task_definition.busybox

#check
aws ecs list-task-definitions

#create a Service based on a task
terraform apply -target aws_ecs_service.aevi-app-service
