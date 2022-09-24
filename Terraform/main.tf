resource "aws_instance" "app_server" {
  count=3
  ami           = "ami-05fa00d4c63e32376"
  instance_type = var.ins

  tags = {
    Name = "ExampleAppServerInstance"
  }
}

resource "aws_iam_group" "demo-groups" {
  for_each = toset( ["G1", "G2"] )
  name     = each.key
}
