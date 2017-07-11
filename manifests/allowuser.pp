# puppet2sitepp @atdallowusers
define atd::allowuser($username = $name) {

  concat::fragment{ "/etc/at.allow ${username}":
    target  => '/etc/at.allow',
    order   => '42',
    content => "${username}\n",
  }

}
