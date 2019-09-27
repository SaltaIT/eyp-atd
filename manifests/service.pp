class atd::service inherits atd {

  $is_docker_container_var=getvar('::eyp_docker_iscontainer')
  $is_docker_container=str2bool($is_docker_container_var)

  if( $is_docker_container==false or
      $atd::manage_docker_service)
  {
    if($atd::manage_service)
    {
      service { $atd::params::service_name:
        ensure => $atd::service_ensure,
        enable => $atd::service_enable,
      }
    }
  }
}
