# == Class: sshguard::params
#
# === Authors
#
# Johannes Graf <graf.johannes@gmail.com>
#
# === Copyright
#
# Copyright 2014 Johannes Graf
#
class sshguard::params {

  $package_name = $::osfamily ? {
    'Debian' => 'sshguard',
    default  => fail("${::osfamily} is not supported by ${module_name}")
  }

  $package_version = 'installed'

  $enable_firewall = 1

  $logfiles = ["/var/log/auth.log"]

  $whitelist = ["127.0.0.0/8"]

  $safety_thresh = 40

  $pardon_min_interval = 420

  $prescribe_interval = 1200

}
