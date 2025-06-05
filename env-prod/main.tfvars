inst_type = "t3.small"

nameofservers = {
  frontend = {
    name = "frontend"
  }
  mongodb = {
    name = "mongodb"
  }
  catalogue = {
    name = "catalogue"
  }
  redis = {
    name = "redis"
  }
  user = {
    name = "user"
  }
  cart = {
    name = "cart"
  }
  mysql = {
    name = "mysql"
  }
  shipping = {
    name = "shipping"
  }
  rabbitmq = {
    name = "rabbitmq"
  }
  payment = {
    name = "payment"
  }
}

env = "prod"

