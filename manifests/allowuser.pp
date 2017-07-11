# puppet2sitepp @atdallowusers
define atd::allowuser($username = $name) {

  include ::atd

  concat::fragment{ "/etc/at.allow ${username}":
    target  => '/etc/at.allow',
    order   => '42',
    content => "${username}\n",
  }

}
