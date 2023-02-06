locals {
  etc_fail2ban = "/etc/fail2ban"
  jail_confs = [
    {
      path    = "${local.etc_fail2ban}/jail.local"
      mode    = 640
      content = <<EOT
# managed by terraform

[DEFAULT]
ignoreip = 127.0.0.1/8
bantime = 10m
findtime = 10m
maxretry = 6

      EOT
    },
    {
      path    = "${local.etc_fail2ban}/jail.d/10-sshd.local",
      mode    = 640
      content = <<EOT
# managed by terraform

[sshd]
enabled = true

      EOT
    },
    {
      path    = "${local.etc_fail2ban}/jail.d/10-recidive.local"
      mode    = 640
      content = <<EOT
# managed by terraform

[recidive]
enabled = true

      EOT
    }
  ]
}

resource "system_file" "etc_fail2ban_jail_confs" {
  depends_on = [system_packages_apt.fail2ban]
  for_each = {
    for jail in local.jail_confs : jail.path => jail
  }
  path    = each.value.path
  mode    = each.value.mode
  content = each.value.content
}
