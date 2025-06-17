module "servers" {

  source = "./module"
  for_each = var.nameofservers
  nameofservers = each.value["name"]
  inst_type = var.inst_type
  env = var.env
  password = lookup(each.value,"password","null")
}