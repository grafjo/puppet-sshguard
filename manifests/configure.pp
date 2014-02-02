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
class sshguard::configure () {

  file { '/etc/sshguard/whitelist':
    ensure  => file,
    source => "puppet:///modules/${module_name}/whitelist",
    notify => Service['sshguard'],
  }

  file { '/etc/default/sshguard':
    ensure  => file,
    source => "puppet:///modules/${module_name}/default",
    notify => Service['sshguard'],
  }

}
