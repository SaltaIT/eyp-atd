class atd::service inherits atd {

  #
  validate_bool($atd::manage_docker_service)
  validate_bool($atd::manage_service)
  validate_bool($atd::service_enable)

  validate_re($atd::service_ensure, [ '^running$', '^stopped$' ], "Not a valid daemon status: ${atd::service_ensure}")

  $is_docker_container_var=getvar('::eyp_docker_iscontainer')
  $is_docker_container=str2bool($is_docker_container_var)

  if( $is_docker_container==false or
      $atd::manage_docker_service)
  {
    if($atd::manage_service)
    {
      #service or exec here
    }
  }
}
