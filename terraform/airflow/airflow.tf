resource "helm_release" "airflow" {
  name       = "airflow"
  chart      = "airflow"
  repository = "https://airflow.apache.org"

  create_namespace = true
  namespace = "airflow"
  force_update = true

  set {
    name  = "webserver.service.type"
    value = "LoadBalancer"
  }

  set {
    name  = "webserver.defaultUser.username"
    value = var.airflow_username
  }

    set {
    name  = "webserver.defaultUser.password"
    value = random_password.password.result
  }
  
  set {
    name = "createUserJob.useHelmHooks"
    value = "false"
  }

  set {
    name = "migrateDatabaseJob.useHelmHooks"
    value = "false"
  }
}

resource "random_password" "password" {
  length           = 12
  special          = true
  override_special = "!#$%&*()-_=+[]{}<>:?"
}
