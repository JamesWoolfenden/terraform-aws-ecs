#
# Create IAM Instance Profile
#
resource "aws_iam_instance_profile" "terraform-ecs-profile" {
    name = "terraform-ecs-profile"
    #roles = ["${aws_iam_role.ecsInstanceRole.name},${aws_iam_role.ecsServiceRole.name}"]
    roles = ["${aws_iam_role.ecsInstanceRole.name}"]
}

#description= "AmazonEC2ContainerServiceforEC2Role"
resource "aws_iam_role_policy" "ecsInstancePolicy" {
    name       = "ecsInstancePolicy"
    role       = "${aws_iam_role.ecsInstanceRole.id}"
    policy     = "${file("iam-policies/instance-role-policy.json")}"
}

resource "aws_iam_role" "ecsInstanceRole" {
    name = "ecsInstanceRole"
    assume_role_policy = "${file("iam-policies/assume-role-policy.json")}"
}
