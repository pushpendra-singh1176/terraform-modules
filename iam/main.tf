resource "aws_iam_role" "this" {
  name               = var.role_name
  assume_role_policy = data.aws_iam_policy_document.assume_role.json

  tags = merge(
    var.tags,
    {
      Name = var.role_name
    }
  )
}
resource "aws_iam_role_policy_attachment" "this" {

  for_each = toset(var.managed_policy_arns)

  role       = aws_iam_role.this.name
  policy_arn = each.value
}
resource "aws_iam_instance_profile" "this" {

  count = var.create_instance_profile ? 1 : 0

  name = var.role_name
  role = aws_iam_role.this.name
}
