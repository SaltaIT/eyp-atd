# == Class: atd
#
# === atd::install documentation
#
class atd::install inherits atd {

  if($atd::manage_package)
  {
    package { $atd::params::package_name:
      ensure => $atd::package_ensure,
    }
  }

}
