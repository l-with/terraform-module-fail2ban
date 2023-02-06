resource "system_packages_apt" "fail2ban" {
  package {
    name = "fail2ban"
  }
}

resource "system_service_systemd" "fail2ban" {
  depends_on = system_file.etc_fail2ban_jail_confs[*]
  name       = "fail2ban"
  status     = "started"
}
