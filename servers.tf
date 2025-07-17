module "database-servers" {

  source = "./module"
  for_each = var.database_servers
  nameofservers = each.value["name"]
  inst_type = var.inst_type
  env = var.env
  password = lookup(each.value,"password","null")
  provisioner = true
}


module "app-servers" {
  depends_on = [module.database-servers]
  source = "./module"
  for_each = var.app_servers
  nameofservers = each.value["name"]
  inst_type = var.inst_type
  env = var.env
  password = lookup(each.value,"password","null")
}



