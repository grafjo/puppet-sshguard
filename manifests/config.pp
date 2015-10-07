# == Class: sshguard::configure
#
# === Authors
#
# Johannes Graf <graf.johannes@gmail.com>
#
# === Copyright
#
# Copyright 2014 Johannes Graf
#
class sshguard::config {

  File {
    owner => 'root',
    group => 'root',
    mode  => '0644',
  }

  file { '/etc/sshguard/whitelist':
    ensure  => file,
    content => template("${module_name}/whitelist.erb"),
  }

  file { '/etc/default/sshguard':
    ensure  => file,
    content => template("${module_name}/default.erb"),
  }

}
