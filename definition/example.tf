provider "consul" {
}

resource "consul_keys" "example" {
  key {
    path  = "hello"
    value = "world"
  }
}
