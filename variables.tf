variable "fail2ban_sshd" {
  description = "if `sshd` jail should be enabled"
  type        = bool
  default     = true
}

variable "fail2ban_recidive" {
  description = "if `recidive` jail should be enabled"
  type        = bool
  default     = true
}