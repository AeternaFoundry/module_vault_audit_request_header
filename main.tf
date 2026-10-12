resource "vault_audit_request_header" "audit_request_headers" {
  for_each = var.audit_request_headers

  name      = each.value.name
  hmac      = each.value.hmac
  namespace = each.value.namespace
}

