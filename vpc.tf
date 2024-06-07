data "aws_vpc" "selected" {
  id = var.vpc_id
}

data "aws_subnet_ids" "private" {
  vpc_id = var.vpc_id
  ids    = var.private_subnet_ids
}

data "aws_subnet" "private" {
  count = length(data.aws_subnet_ids.private.ids)
  id    = element(data.aws_subnet_ids.private.ids, count.index)
}
