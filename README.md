# Terraform Module fail2ban

Terraform module which installs certbot.

This is a terraform replacement for [Ansible Role fail2ban](https://github.com/l-with/ansible-role-fail2ban).

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.15 |
| <a name="requirement_system"></a> [system](#requirement\_system) | >= 0.3.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_system"></a> [system](#provider\_system) | >= 0.3.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [system_file.etc_fail2ban_jail_confs](https://registry.terraform.io/providers/neuspaces/system/latest/docs/resources/file) | resource |
| [system_packages_apt.fail2ban](https://registry.terraform.io/providers/neuspaces/system/latest/docs/resources/packages_apt) | resource |
| [system_service_systemd.fail2ban](https://registry.terraform.io/providers/neuspaces/system/latest/docs/resources/service_systemd) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_fail2ban_recidive"></a> [fail2ban\_recidive](#input\_fail2ban\_recidive) | if `recidive` jail should be enabled | `bool` | `true` | no |
| <a name="input_fail2ban_sshd"></a> [fail2ban\_sshd](#input\_fail2ban\_sshd) | if `sshd` jail should be enabled | `bool` | `true` | no |

## Outputs

No outputs.
<!-- END_TF_DOCS -->
