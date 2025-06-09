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
    passsword = "RoboShop@1"
  }
  shipping = {
    name = "shipping"
    passsword = "RoboShop@1"
  }
  rabbitmq = {
    name = "rabbitmq"
    passsword = "roboshop123"
  }
  payment = {
    name = "payment"
    passsword = "roboshop123"
  }
}

env = "dev"