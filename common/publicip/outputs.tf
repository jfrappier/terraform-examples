output "ipinfo" {
  description = "Public IP of host running terraform apply"
  value       = data.http.ipinfo.body
}
