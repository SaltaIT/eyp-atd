# == Class: atd
#
# === atd::config documentation
#
class atd::config inherits atd {

  file { '/etc/at.deny':
    ensure => 'absent',
  }

  file { '/etc/at.allow':
    ensure => 'present',
    owner  => 'root',
    group  => 'root',
    mode   => '0400',
  }

}
