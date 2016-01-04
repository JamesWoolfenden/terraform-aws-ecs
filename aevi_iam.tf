#description= "AmazonEC2ContainerServiceRole"
resource "aws_iam_role_policy" "ecsServicePolicy" {
    name   = "ecsServicePolicy"
    role   = "${aws_iam_role.ecsServiceRole.id}"
    policy = "${file("iam-policies/service-role-policy.json")}"
}

resource "aws_iam_role" "ecsServiceRole" {
    name = "ecsServiceRole"
    assume_role_policy = "${file("iam-policies/assume-role-policy.json")}"
}
