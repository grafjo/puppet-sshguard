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
class sshguard::configure (
  $enable_firewall,
  $logfiles,
  $whitelist,
  $safety_thresh,
  $pardon_min_interval,
  $prescribe_interval,
) {

  file { '/etc/sshguard/whitelist':
    ensure  => file,
    content => template("${module_name}/whitelist.erb"),
    notify => Service['sshguard'],
  }

  file { '/etc/default/sshguard':
    ensure  => file,
    content => template("${module_name}/default.erb"),
    notify => Service['sshguard'],
  }

}
