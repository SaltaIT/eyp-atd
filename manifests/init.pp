# == Class: atd
#
# === atd documentation
#
class atd(
            $manage_package        = true,
            $package_ensure        = 'installed',
            $manage_service        = true,
            $manage_docker_service = true,
            $service_ensure        = 'running',
            $service_enable        = true,
          ) inherits atd::params{

  validate_re($package_ensure, [ '^present$', '^installed$', '^absent$', '^purged$', '^held$', '^latest$' ], 'Not a supported package_ensure: present/absent/purged/held/latest')

  class { '::atd::install': } ->
  class { '::atd::config': } ~>
  class { '::atd::service': } ->
  Class['::atd']

}
