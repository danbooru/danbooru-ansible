# https://robot.your-server.de/doc/webservice/en.html
# https://registry.terraform.io/providers/hashicorp/external/latest/docs/data-sources/data_source

data "external" "kinako_donmai_us" {
  program = [
    "env",
    "HETZNER_USERNAME=${var.hetzner_username}",
    "HETZNER_PASSWORD=${var.hetzner_password}",
    "${path.module}/bin/hetzner-robot.sh",
    "server",
    var.server_ids.kinako
  ]
}

data "external" "haachama_donmai_us" {
  program = [
    "env",
    "HETZNER_USERNAME=${var.hetzner_username}",
    "HETZNER_PASSWORD=${var.hetzner_password}",
    "${path.module}/bin/hetzner-robot.sh",
    "server",
    var.server_ids.haachama
  ]
}
