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
    password = "RoboShop@1"
  }
  shipping = {
    name = "shipping"
    password = "RoboShop@1"
  }
  rabbitmq = {
    name = "rabbitmq"
    password = "roboshop123"
  }
  payment = {
    name = "payment"
    password = "roboshop123"
  }
}

env = "dev"