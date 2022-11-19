output "airflow_username" {
  value = var.airflow_username
  description = "The Apache Airflow username"
}

output "airflow_password" {
  value = random_password.password.result
  description = "The Apache Airflow password"
  sensitive = true
}

output "airflow_endpoint" {
  value = "http://${data.kubernetes_service.airflow-webserver.status.0.load_balancer.0.ingress.0.ip}:8080"
  description = "The Apache Airflow endpoint URL"
}
