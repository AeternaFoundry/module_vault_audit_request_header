output "audit_request_headers_id" {
  description = "Map of id values across all audit_request_headers, keyed the same as var.audit_request_headers except keys with no id are omitted"
  value       = { for k, v in vault_audit_request_header.audit_request_headers : k => v.id if v.id != null && length(v.id) > 0 }
}
output "audit_request_headers_hmac" {
  description = "Map of hmac values across all audit_request_headers, keyed the same as var.audit_request_headers except keys with no hmac are omitted"
  value       = { for k, v in vault_audit_request_header.audit_request_headers : k => v.hmac if v.hmac != null }
}
output "audit_request_headers_name" {
  description = "Map of name values across all audit_request_headers, keyed the same as var.audit_request_headers except keys with no name are omitted"
  value       = { for k, v in vault_audit_request_header.audit_request_headers : k => v.name if v.name != null && length(v.name) > 0 }
}
output "audit_request_headers_namespace" {
  description = "Map of namespace values across all audit_request_headers, keyed the same as var.audit_request_headers except keys with no namespace are omitted"
  value       = { for k, v in vault_audit_request_header.audit_request_headers : k => v.namespace if v.namespace != null && length(v.namespace) > 0 }
}

