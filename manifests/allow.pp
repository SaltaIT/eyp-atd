# puppet2sitepp @atdallows
define atd::allow($username = $name) {

  concat::fragment{ "/etc/at.allow ${username}":
    target  => '/etc/at.allow',
    order   => '42',
    content => "${username}\n",
  }

}
