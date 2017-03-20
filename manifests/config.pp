# == Class: atd
#
# === atd::config documentation
#
class atd::config inherits atd {

  file { '/etc/at.deny':
    ensure => 'absent',
  }

}
