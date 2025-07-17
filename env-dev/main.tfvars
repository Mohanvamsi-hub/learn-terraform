inst_type = "t3.small"

database_servers = {
  mongodb = {
    name = "mongodb"
  }
  redis = {
    name = "redis"
  }
  mysql = {
    name = "mysql"
    password = "RoboShop@1"
  }
  rabbitmq = {
    name = "rabbitmq"
    password = "roboshop123"
  }
}

app_servers = {
  frontend = {
    name = "frontend"
  }

  catalogue = {
    name = "catalogue"
  }

  user = {
    name = "user"
  }
  cart = {
    name = "cart"
  }

  shipping = {
    name = "shipping"
    password = "RoboShop@1"
  }

  payment = {
    name = "payment"
    password = "roboshop123"
  }
}

env = "dev"