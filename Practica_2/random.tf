resource "random_string" "sufijo" {
  count   = 2
  length  = 4
  special = false
  upper   = false
  numeric = false
}