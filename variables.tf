variable "audit_request_headers" {
  description = <<EOT
Map of audit_request_headers, attributes below
Required:
    - name
Optional:
    - hmac
    - namespace
EOT

  type = map(object({
    name      = string
    hmac      = optional(bool)
    namespace = optional(string)
  }))
}

